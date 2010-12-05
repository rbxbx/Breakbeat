#import "SysSoundViewController.h"

@implementation SysSoundViewController

@synthesize amenFileURLRef;
@synthesize amenFileObject;

@synthesize thinkFileURLRef;
@synthesize thinkFileObject;

@synthesize funkyDrummerFileURLRef;
@synthesize funkyDrummerFileObject;

@synthesize rockSteadyFileURLRef;
@synthesize rockSteadyFileObject;

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


    self.amenFileURLRef = (CFURLRef) [amenBreak retain];
    self.thinkFileURLRef = (CFURLRef) [thinkBreak retain];
    self.funkyDrummerFileURLRef = (CFURLRef) [funkyDrummerBreak retain];
    self.rockSteadyFileURLRef = (CFURLRef) [rockSteadyBreak retain];

    AudioServicesCreateSystemSoundID (
        amenFileURLRef,
        &amenFileObject
    );
    AudioServicesCreateSystemSoundID (
        thinkFileURLRef,
        &thinkFileObject
    );
    AudioServicesCreateSystemSoundID (
        funkyDrummerFileURLRef,
        &funkyDrummerFileObject
    );
    AudioServicesCreateSystemSoundID (
        rockSteadyFileURLRef,
        &rockSteadyFileObject
    );
}


- (IBAction) playAmenSound: (id) sender {
    AudioServicesPlaySystemSound (amenFileObject);
}

- (IBAction) playThinkSound: (id) sender {
    AudioServicesPlaySystemSound (thinkFileObject);
}

- (IBAction) playFunkyDrummerSound: (id) sender {
    AudioServicesPlaySystemSound (funkyDrummerFileObject);
}

- (IBAction) playRockSteadySound: (id) sender {
    AudioServicesPlaySystemSound (rockSteadyFileObject);
}

- (void) dealloc {

    AudioServicesDisposeSystemSoundID (amenFileObject);
    AudioServicesDisposeSystemSoundID (thinkFileObject);
    AudioServicesDisposeSystemSoundID (funkyDrummerFileObject);
    AudioServicesDisposeSystemSoundID (rockSteadyFileObject);
    CFRelease (amenFileURLRef);
    [super dealloc];
}

@end
