<app-nav>
  <ul class="clearfix">
    <virtual each={cat in cats}>
      <li class={is_current: cat.is_current} data-cat={cat.id} onclick={getCat}>{cat.name}</li>
    </virtual>
  </ul>

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
    ul {
      width: 2000px;
      border-bottom: 3px solid #e4682b;
    }
    li {
      list-style: none;
      margin: 0 1px;
      min-width: 80px;
      padding: 8px 10px;
      border-radius: 5px 5px 0 0;
      border: 1px solid #e4682b;
      font-size: 12px;
      text-align: center;
      cursor: pointer;
      float: left;
    }
    .is_current{
      background: #e4682b;
      color: #fff;
    }
  </style>

  var controller = require('../controller/common.js');

  // 初期設定
  var self = this;
  controller.getList(self, opts, 'cats');
  console.log(controller.init());

  getCat(e){
    // カレント状態をオフ
    for(num in this.cats){
      this.cats[num].is_current = null;
    }

    // 選択要素をカレント状態に
    var current = e.item.cat;
    this.cats[this.cats.indexOf(current)].is_current = 'on';

    // Controllerのリスト表示実行
    controller.getCatList(opts.selector, 'lists', this.cats[this.cats.indexOf(current)].id);

    // 更新
    this.update();
  }
</app-nav>