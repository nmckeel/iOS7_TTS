var iOS7_TTS = {

 	speak: function(successCallback, failureCallback, text)
 	{
 		cordova.exec(successCallback, failureCallback, 'iOS7_TTS', 'echo', [text]);
 	},
 	pauseSpeaking: function(successCallback, failureCallback)
 	{
 	  cordova.exec(successCallback, failureCallback, 'iOS7_TTS', 'speechSynthesizerPause');
 	}
 	continueSpeaking: function(successCallback, failureCallback)
 	{
 	  cordova.exec(successCallback, failureCallback, 'iOS7_TTS', 'speechSynthesizerContinue');
 	}
 	
 };

 module.exports = iOS7_TTS;
