$(document).on 'ready', () ->
  return

$(document).on 'submit', '#form', (e) ->
  console.log "testando"
  e.preventDefault()
  # window.localStorage.clear()
  container = $(":mobile-pagecontainer")

  data =
    city: $("#city").val(),
    state: $("#state").val()

  window.localStorage.setItem("data", JSON.stringify(data))
  console.log JSON.parse(window.localStorage.getItem("data"))

  container.pagecontainer("change", "map.html", { role: "page", transition: "fade" })

  return
