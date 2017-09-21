<template>
  <div id="contact">
    <div class="row">
      <div class="col-sm-12">
        <h2>Contact</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-12">
        <div class="content">
          <form method="post">
            <div class="form-group">
              <label for="new_contact_name">Name</label>
              <input type="text" name="name" id="new_contact_name" class="form-control" placeholder="お名前" />
            </div>
            <div class="form-group">
              <label for="new_contact_content">Content</label>
              <textarea name="content" id="new_contact_content" class="form-control" rows="15" placeholder="お問い合わせ内容"></textarea>
            </div>
            <div class="btnArea">
              <input type="reset" value="キャンセル" class="btn btn-default" />
              <input type="submit" value="送信" class="btn btn-primary" />
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
  .btnArea {
    text-align: right;
  }
  .btnArea .btn {
    width: 150px;
  }
</style>