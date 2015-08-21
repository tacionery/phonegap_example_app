$(document).on 'ready', ->
  $('#form').on 'submit', (e) ->
    e.preventDefault()
    window.localStorage.clear()

    data =
      city: $("#city").val(),
      state: $("#state").val()

    window.localStorage.setItem("data", JSON.stringify(data))
    # console.log JSON.parse(window.localStorage.getItem("data"))

    $.mobile.changePage("map.html")
    return

  return
