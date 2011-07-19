exec  = require("child_process").exec

start = (response) ->
  console.log "Request Handlers start() called"
  body = '<html>'+
    '<head>'+
    '<meta http-equiv="Content-Type" content="text/html; '+
    'charset=UTF-8" />'+
    '</head>'+
    '<body>'+
    '<form action="/upload" method="post">'+
    '<textarea name="text" rows="20" cols="60"></textarea>'+
    '<input type="submit" value="Submit text" />'+
    '</form>'+
    '</body>'+
    '</html>'
  response.writeHead(200, {"Content-Type": "text/html"})
  response.write(body)
  response.end()

upload = (response) ->
  console.log "Request Handlers upload() called"
  response.writeHead(200, {"Content-Type": "text/plain"})
  response.write("hello from upload()")
  response.end()

exports.start  = start
exports.upload = upload
