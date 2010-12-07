#import "SysSoundViewController.h"

@implementation SysSoundViewController

@synthesize currentPlayer;
@synthesize amenPlayer;
@synthesize thinkPlayer;
@synthesize funkyDrummerPlayer;
@synthesize rockSteadyPlayer;

- (void) viewDidLoad {

    [super viewDidLoad];

    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];

    NSURL *amenBreak   = [[NSBundle mainBundle] URLForResource: @"amen"
                                                 withExtension: @"wav"];

    NSURL *thinkBreak   = [[NSBundle mainBundle] URLForResource: @"think"
                                                  withExtension: @"wav"];

    NSURL *funkyDrummerBreak   = [[NSBundle mainBundle] URLForResource: @"funky_drummer"
                                                         withExtension: @"wav"];

    NSURL *rockSteadyBreak   = [[NSBundle mainBundle] URLForResource: @"rock_steady"
                                                       withExtension: @"wav"];
	
	self.amenPlayer          = [self initPlayerWithFileURL:amenBreak];
	self.thinkPlayer         = [self initPlayerWithFileURL:thinkBreak];
	self.funkyDrummerPlayer  = [self initPlayerWithFileURL:funkyDrummerBreak];
	self.rockSteadyPlayer    = [self initPlayerWithFileURL:rockSteadyBreak];
}

- (IBAction) playAmenSound: (id) sender {
	[self switchPlayer:amenPlayer];
	[self playCurrent];
}

-(IBAction) playThinkSound: (id) sender {
	[self switchPlayer:thinkPlayer];
	[self playCurrent];
}

- (IBAction) playFunkyDrummerSound: (id) sender {
	[self switchPlayer:funkyDrummerPlayer];
	[self playCurrent];
}

- (IBAction) playRockSteadySound: (id) sender {
	[self switchPlayer:rockSteadyPlayer];
	[self playCurrent];
}

- (void) switchPlayer: (AVAudioPlayer *) newPlayer {
	self.currentPlayer = newPlayer;
	[currentPlayer prepareToPlay];
}

- (void) playCurrent {
	[currentPlayer play];
}

- (AVAudioPlayer *) initPlayerWithFileURL: (NSURL *) file {
	[[AVAudioPlayer alloc] initWithContentsOfURL:file error: nil];
}

- (void) dealloc {
	[amenPlayer release];
	[thinkPlayer release];
	[funkyDrummerPlayer	release];
	[rockSteadyPlayer release];
    [super dealloc];
}

@end