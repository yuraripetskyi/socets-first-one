<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
</head>

<body>
home page

<button id="sendMessageButton">send message</button>

<script>

    console.log("oktenweb");

    let socket = new SockJS("/entryPoint");
    let stompclient = Stomp.over(socket);
    stompclient.connect();

let sendMessageButton = document.getElementById('sendMessageButton');
sendMessageButton.onclick = function() {
    stompclient.send('/prefixForSendMessage/message', {}, JSON.stringify({msg: 'hello'}));
}
</script>
</body>
</html>