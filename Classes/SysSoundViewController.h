#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface SysSoundViewController : UIViewController {

	AVAudioPlayer	*amenPlayer;


	AVAudioPlayer *thinkPlayer;


	AVAudioPlayer *funkyDrummerPlayer;


	AVAudioPlayer *rockSteadyPlayer;

}

@property (nonatomic, retain) AVAudioPlayer *currentPlayer;
@property (readwrite, retain) AVAudioPlayer	*amenPlayer;
@property (readwrite, retain) AVAudioPlayer	*thinkPlayer;
@property (readwrite, retain) AVAudioPlayer	*funkyDrummerPlayer;
@property (readwrite, retain) AVAudioPlayer	*rockSteadyPlayer;

- (IBAction) playAmenSound: (id) sender;
- (IBAction) playThinkSound: (id) sender;
- (IBAction) playFunkyDrummerSound: (id) sender;
- (IBAction) playRockSteadySound: (id) sender;

- (AVAudioPlayer *) initPlayerWithFileUrl: (NSURL *) file;
- (void) switchPlayer: (AVAudioPlayer *) newPlayer;
- (void) playCurrent;

@end
