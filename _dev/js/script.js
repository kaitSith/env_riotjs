var riot = require('riot');

require('./tags/base/login.tag');
require('./tags/base/foo.tag');
require('./tags/base/tag1.tag');
require('./tags/base/tag2.tag');
require('./tags/base/route.tag');

// Riot Version
console.log(riot.version);



// Login API
var auth = riot.observable()

auth.login = function(params) {
  $.get('/api', params, function(json) {
    auth.trigger('login', json)
  })
}

riot.mount('login', auth);
riot.mount('foo');
riot.mount('route');