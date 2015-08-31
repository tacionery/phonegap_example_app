$(document).on 'pagecontainershow', (evt, ui) ->
  console.log "map"
  $('#map_canvas').gmap({ 'center': '-8.0626837,-34.8720008', 'zoom': 17 }).bind 'init', (ev, map) ->
    $('#map_canvas').gmap('addMarker',
      'position': '-8.0626837,-34.8720008'
      'bounds': true).click ->
      $('#map_canvas').gmap 'openInfoWindow', { 'content': 'It is same man!' }, this
      return
    return
  return

$(document).on 'click', 'a', (e) ->
  e.preventDefault()
  href = $(this).attr('href')

  container = $(":mobile-pagecontainer")
  container.pagecontainer("change", href, { role: "page", transition: "fade" })

  return
