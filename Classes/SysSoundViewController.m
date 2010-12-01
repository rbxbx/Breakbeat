/*
    File: SysSoundViewController.m
Abstract: This file does the work for SysSound--defining the sound to play and then playing
it when a user taps the System Sound button. Tapping the Alert Sound button invokes an alert as
performed by the device; for example, on an iPhone, it plays the sound and also invokes
vibration. Tapping the Vibration button directly invokes vibration on devices that support it.

 Version: 1.1

*/

#import "SysSoundViewController.h"

@implementation SysSoundViewController

@synthesize soundFileURLRef;
@synthesize soundFileObject;


- (void) viewDidLoad {

    [super viewDidLoad];

    // Provide a nice background for the app user interface.
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];

    // Create the URL for the source audio file. The URLForResource:withExtension: method is
    //    new in iOS 4.0.
    NSURL *amenBreak   = [[NSBundle mainBundle] URLForResource: @"amen_full"
                                                withExtension: @"wav"];

    // Store the URL as a CFURLRef instance
    self.soundFileURLRef = (CFURLRef) [amenBreak retain];

    // Create a system sound object representing the sound file.
    AudioServicesCreateSystemSoundID (

        soundFileURLRef,
        &soundFileObject
    );
}


// Respond to a tap on the System Sound button.
- (IBAction) playSystemSound: (id) sender {

    AudioServicesPlaySystemSound (soundFileObject);
}


// Respond to a tap on the Alert Sound button.
- (IBAction) playAlertSound: (id) sender {

    AudioServicesPlayAlertSound (soundFileObject);
}


// Respond to a tap on the Vibrate button. In the Simulator and on devices with no
//    vibration element, this method does nothing.
- (IBAction) vibrate: (id) sender {

    AudioServicesPlaySystemSound (kSystemSoundID_Vibrate);
}


- (void) dealloc {

    AudioServicesDisposeSystemSoundID (soundFileObject);
    CFRelease (soundFileURLRef);
    [super dealloc];
}

@end
