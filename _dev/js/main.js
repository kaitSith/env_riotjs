var riot = require('riot');

require('./tags/app-nav.tag');
require('./tags/app-list.tag');
require('./tags/app-sidebar.tag');

riot.mount('app-nav', {dataRequest: $.get('/assets/api/category.json')});
riot.mount('app-list', {dataRequest: $.get('/assets/api/list.json')});
riot.mount('app-sidebar');