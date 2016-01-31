<foo>
  <a href="#tag1">tag1</a>
  <a href="#tag2">tag2</a>
  <bar />

  <script>
    this.on('mount', function() {
      // URL変更を検知開始
      riot.route.start()

      // routerに変更があったら実行される
      riot.route(function(tag) {
        // <bar /> に tag を展開する
        riot.mount('bar', tag)
      })

      // ブラウザをリロードした時用
      riot.route(location.hash.replace('#', ''))
    })
  </script>
</foo>