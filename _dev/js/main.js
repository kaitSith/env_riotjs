var riot = require('riot');

require('./tags/app-nav.tag');
require('./tags/app-list.tag');
require('./tags/app-detail.tag');
require('./tags/app-sidebar.tag');

var list = riot.mount('app-list', {dataRequest: $.get('/assets/model/list.json')});
var nav = riot.mount('app-nav', {dataRequest: $.get('/assets/model/category.json'), selector: list[0]});
var detail = riot.mount('app-detail', {dataRequest: $.get('/assets/model/list.json')});
var sidebar = riot.mount('app-sidebar');