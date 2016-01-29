var Controller = {
  init: function() {
    console.log('now initialize...');
    this.observer = {
      current: null,
      list: []
    };
  },
  addItem: function(e){
    this.observer.current = e;
  },
  addList: function(obj) {
    this.observer.list.push(obj);
  },
  refresh: function(){
    this.observer.list = [];
  },
  chkNaN: function(x) {
    return x !== x;
  },
  getList: function(self, opts, prop){
    self[prop] = [];
    opts.dataRequest.done(function(data){
      self[prop] = data.results;
      self.update(self[prop]);
    });
  },
  getCatList: function(self, prop, id){
    // リストインスタンスのループ
    for(num in self){
      if(!this.chkNaN(parseInt(num))){
      	// 
        if((self[num].cat_id) ===  id){
          self[num].is_visible = true;
        } else {
          self[num].is_visible = null;
        }
      }
    }
  	self.update(self[prop]);
  }
}
module.exports = Controller;