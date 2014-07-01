//
//  iOS7_TTS.h
//  Plugin
//
//
//
//

#import <Cordova/CDVPlugin.h>
#import <AVFoundation/AVFoundation.h>


@interface iOS7_TTS : CDVPlugin <AVSpeechSynthesizerDelegate>


@property (strong, nonatomic) AVSpeechSynthesizer *synthesizer;

- (void) echo:(NSMutableArray*)arguments;



@end
