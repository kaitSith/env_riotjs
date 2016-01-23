var riot = require('riot');

require('./tags/app-nav.tag');
require('./tags/app-list.tag');
require('./tags/app-sidebar.tag');

riot.mount('app-nav, app-list, app-sidebar');