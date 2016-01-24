<app-nav>
  <ul class="clearfix">
    <li each={cat} class="cat-{type}" data-cat="{id}" onclick="{getCat}">{name}</li>
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
    .cat-0{
      background: #e4682b;
      color: #fff;
    }
  </style>

  <script>
    var self = this;
    this.cat = [];
    opts.dataRequest.done(function(data){
      self.cat = data.results;
      self.update(this.cat);
    });

    getCat(e){
      console.log('click!');
    }
  </script>
</app-nav>