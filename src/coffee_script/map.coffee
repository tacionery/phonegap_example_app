$(document).on 'pagecontainershow', (evt, ui) ->
  console.log "map"
  defaultLatLng = new (google.maps.LatLng)(34.0983425, -118.3267434)
  # Default to Hollywood, CA when no geolocation support

  success = (pos) ->
    # Location found, show map with these coordinates
    drawMap new (google.maps.LatLng)(pos.coords.latitude, pos.coords.longitude)
    return

  fail = (error) ->
    drawMap defaultLatLng
    # Failed to find location, show default map
    return

  drawMap = (latlng) ->
    myOptions =
      zoom: 10
      center: latlng
      mapTypeId: google.maps.MapTypeId.ROADMAP
    map = new (google.maps.Map)(document.getElementById('map-canvas'), myOptions)
    # Add an overlay to the map of current lat/lng
    marker = new (google.maps.Marker)(
      position: latlng
      map: map
      title: 'Greetings!')
    return

  if navigator.geolocation
    # Find the users current position.  Cache the location for 5 minutes, timeout after 6 seconds
    navigator.geolocation.getCurrentPosition success, fail,
      maximumAge: 500000
      enableHighAccuracy: true
      timeout: 6000
  else
    drawMap defaultLatLng
    # No geolocation support, show default map
  return
