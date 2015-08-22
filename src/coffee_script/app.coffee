$(document).on 'ready', ->
  container = $(":mobile-pagecontainer")
  $('#form').on 'submit', (e) ->
    e.preventDefault()
    window.localStorage.clear()

    data =
      city: $("#city").val(),
      state: $("#state").val()

    window.localStorage.setItem("data", JSON.stringify(data))
    # console.log JSON.parse(window.localStorage.getItem("data"))
    # $.mobile.change("map.html")

    container.pagecontainer("change", "map.html", {role: "page", transition: "slide"})

    return

  return
