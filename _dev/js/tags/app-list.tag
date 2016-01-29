<app-list>
  <div class="coupon-items">
    <virtual each={list in lists}>
      <a class="coupon-item" href={list.link} data-list={list.id} if={list.is_visible} onclick={goDetail}>
        <div class="clearfix">
          <img src={list.thumb} alt="">
          <div class="info">
            <p class="txt-title">{list.title}</p>
            <p class="txt-desc">{list.description}</p>
          </div>
        </div>
      </a>
    </virtual>
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
      display: block;
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

  var controller = require('../controller/common.js');

  // 初期実行
  var self = this;
  controller.getList(self, opts, 'lists');

  goDetail(e){
    controller.refresh();
    controller.addItem(e.item);
    for(num in this.lists){
      if(this.lists[num].is_visible){
        controller.addList(this.lists[num])
      }
    }
    console.log(controller)
  }
</app-list>