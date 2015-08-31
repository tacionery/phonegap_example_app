cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
    {
        "file": "plugins/com.testflightapp.cordova-plugin/www/testflight.js",
        "id": "com.testflightapp.cordova-plugin.TestFlight",
        "clobbers": [
            "TestFlight"
        ]
    }
];
module.exports.metadata = 
// TOP OF METADATA
{
    "com.testflightapp.cordova-plugin": "3.1.0"
}
// BOTTOM OF METADATA
});