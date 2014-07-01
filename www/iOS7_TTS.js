var iOS7_TTS = {

 	speak: function(successCallback, failureCallback, text)
 	{
 		cordova.exec(successCallback, failureCallback, 'iOS7_TTS', 'echo', [text]);
 	},
 	pause: function(successCallback, failureCallback)
 	{
 	  cordova.exec(successCallback, failureCallback, 'iOS7_TTS', 'speechSynthesizerPause');
 	}
 	continue: function(successCallback, failureCallback)
 	{
 	  cordova.exec(successCallback, failureCallback, 'iOS7_TTS', 'speechSynthesizerContinue');
 	}
 	
 };

 module.exports = iOS7_TTS;
