<app-list>
  <div class="coupon-items">
    <div class="coupon-item clearfix" each={list} data-list="{id}">
      <img src="{thumb}" alt="">
      <div class="info">
        <p class="txt-title">{title}</p>
        <p class="txt-desc">{description}</p>
      </div>
    </div>
  </div>

  <style scoped>
    :scope {
      overflow-x: scroll;
      display: block;
    }
    .clearfix:after {
      content: "";
      clear: both;
      display: block;
    }
    .coupon-items {
      padding: 5px 0;
    }
    .coupon-item {
      padding: 10px 1%;
      margin: 0 auto;
      width: 98%;
      border-bottom: 1px solid #ccc;
    }
    img {
      width: 20%;
      height: auto;
      float: left;
    }
    .info {
      margin-left: 3%;
      width: 75%;
      float: left;
    }
    .txt-title {
      font-size: 14px;
    }
    .txt-desc {
      font-size: 12px;
    }
  </style>

  <script>
    var self = this;
    this.list = [];
    opts.dataRequest.done(function(data){
      self.list = data.results;
      self.update(this.list);
    });
  </script>
</app-list>