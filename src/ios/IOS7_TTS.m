//
//

#import "iOS7_TTS.h"

@implementation iOS7_TTS





- (void)echo:(CDVInvokedUrlCommand*)command
{

self.synthesizer = [[AVSpeechSynthesizer alloc] init];
self.synthesizer.delegate = self;

CDVPluginResult* pluginResult = nil;
NSString* echo = [command.arguments objectAtIndex:0];


if (echo != nil && [echo length] > 0 ) {

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];


        AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:echo];
        utterance.rate = 0.20;
        utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-us"];
        [self.synthesizer speakUtterance:utterance];     


} else {
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
}

[self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

-(void)speechSynthesizerPause:(AVSpeechSynthesizer *)synthesizer {

[self.synthesizer pauseSpeakingAtBoundary:AVSpeechBoundaryImmediate];
NSLog(@"Pausing");

}

-(void)speechSynthesizerContinue:(AVSpeechSynthesizer *)synthesizer {

   [self.synthesizer continueSpeaking];
    NSLog(@"Continue");

}


-(void)speechSynthesizer:(AVSpeechSynthesizer *)synthesizer didFinishSpeechUtterance:(AVSpeechUtterance *)utterance {
NSLog(@"Playback finished");
}


@end
