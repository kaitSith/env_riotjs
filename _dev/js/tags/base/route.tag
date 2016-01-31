<route>
  this.on('mount', function() {
    // URL変更を検知開始
    riot.route.start()

    // URLが`/fruit/apple`に変更した場合
    // 'apple'を`name`として渡す
    riot.route('/fruit/*', function(name) {
      console.log('The detail of ' + name)
    });

  });
</route>