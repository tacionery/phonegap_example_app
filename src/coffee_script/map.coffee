$(document).on 'pagechange', ->
  console.log "map"
  data = JSON.parse(window.localStorage.getItem("data"))
  console.log data
  return
