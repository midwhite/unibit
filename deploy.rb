require 'yaml'
require 'aws-sdk'

system("npm run build")

INDEX_FILE_PATH = './dist/index.html'

def dynamic_script(filenames)
  "<script>(function(){var randomStr = function(num){var c='abcdefghijklmnopqrstuvwxyz0123456789',r='';for(var i=0;i<num;i++){r+=c[Math.floor(Math.random()*c.length)];}return r;};var s='';#{filenames.map{|filename|"s+='<scr'+'ipt type=text/javascript src="+filename+"?_='+randomStr(32)+'></scr'+'ipt>';"}.join}document.write(s)})()</script>"
end

html = open(INDEX_FILE_PATH, &:read)

matcher_filepath = "/static/js/[0-9a-z\.]*\.js"
matcher_script   = "<script type=text/javascript src=#{matcher_filepath}></script>"

regexp  = Regexp.new(matcher_script, "i")
scripts = html.scan(regexp)
filenames = scripts.map{|script_str|
  partial_regexp = Regexp.new(matcher_filepath, "i")
  script_str.match(partial_regexp).to_s
}

File.open(INDEX_FILE_PATH, "w") do |f|
  f << html.gsub(scripts.map(&:to_s).join, dynamic_script(filenames))
end

### AWS S3デプロイ ###
YAML.load_file("./aws.yml").each do |k,v|
  ENV[k] = v
end

# S3にアップロード
s3 = Aws::S3::Client.new
s3.put_object(
  bucket: ENV['BUCKET'],
  body: File.new(INDEX_FILE_PATH),
  key: File.basename(INDEX_FILE_PATH)
)

# CloudFrontのInvalidation
cf = Aws::CloudFront::Client.new
cf.create_invalidation({
  distribution_id: ENV['AWS_CLOUD_FRONT_DISTRIBUTION_ID'],
  invalidation_batch: {
    paths: {
      quantity: 1,
      items: ["/"+File.basename(INDEX_FILE_PATH)]
    },
    caller_reference: Time.now.to_s
  }
})
