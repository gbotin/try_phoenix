$(function(){

  // $.color = '#'+Math.floor(Math.random()*16777215).toString(16);

  var socket = new Phoenix.Socket("/ws");

  socket.join("chat", "secret", {}, function(channel) {

    channel.on("join", function(message) {
      user = $("<dt>[SYSTEM] :</dt>");
      message = "<dd>" + message + "</dd>";

      $('#message-container')
        .append(user)
        .append(message);
    });

    channel.on("message:lol", function(message) {
      user = $("<dt>anon :</dt>");
      message = "<dd>" + message.content + "</dd>";

      $('#message-container')
        .append(user)
        .append(message);
    });

    $(document).on('message:emit', function(e, message){

      console.log(message.data)

      channel.send('message:emit', {text: message.data});

      // channel.send("ping", {data: "json stuff"});
    });

  });


  $('#message-input').submit(function(){

    text = $(this).find('input').val();

    $(this).find('input').val('');

    $container = $('#message-container');
    $container[0].scrollTop = $container[0].scrollHeight;

    $(document).trigger('message:emit', {data: text});

  });


});
