var app = {
  initialize: function() {
    this.bindEvents();
  },
  bindEvents: function() {
    document.addEventListener('deviceready', this.onDeviceReady, false);
  },
  onDeviceReady: function() {
    app.receivedEvent('deviceready');
    var tf = new TestFlight();
    tf.takeOff(win, fail, "some_team_token");
  },
  receivedEvent: function(id) {
    var listeningElement, parentElement, receivedElement;
    parentElement = document.getElementById(id);
    listeningElement = parentElement.querySelector('.listening');
    receivedElement = parentElement.querySelector('.received');
    listeningElement.setAttribute('style', 'display:none;');
    receivedElement.setAttribute('style', 'display:block;');
    console.log('Received Event: ' + id);
  }
};

app.initialize();
