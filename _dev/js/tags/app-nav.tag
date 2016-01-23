<app-nav>
  <ul>
    <li each={areas}>{title}区</li>
  </ul>
  this.areas = [{
    title: '中央',
    id: 0
  },{
    title: '千代田',
    id: 1
  },{
    title: '世田谷',
    id: 2
  },{
    title: '港',
    id: 3
  },{
    title: '渋谷',
    id: 4
  }];
</app-nav>