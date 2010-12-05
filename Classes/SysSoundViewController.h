/*
    File: SysSoundViewController.h
Abstract: This file does the work for SysSound--defining the sound to play and then playing
it when a user taps the System Sound button. Tapping the Alert Sound button invokes an alert as
performed by the device; for example, on an iPhone, it plays the sound and also invokes 
vibration. Tapping the Vibration button directly invokes vibration on devices that support it.

 Version: 1.1

Copyright (C) 2010 Apple Inc. All Rights Reserved.

*/

#import <UIKit/UIKit.h>
#include <AudioToolbox/AudioToolbox.h>

@interface SysSoundViewController : UIViewController {

	CFURLRef	amenFileURLRef;
	SystemSoundID	amenFileObject;

	CFURLRef	thinkFileURLRef;
	SystemSoundID	thinkFileObject;

	CFURLRef	funkyDrummerFileURLRef;
	SystemSoundID	funkyDrummerFileObject;

	CFURLRef	rockSteadyFileURLRef;
	SystemSoundID	rockSteadyFileObject;

}

@property (readwrite)	CFURLRef	amenFileURLRef;
@property (readonly)	SystemSoundID	amenFileObject;

@property (readwrite)	CFURLRef	thinkFileURLRef;
@property (readonly)	SystemSoundID	thinkFileObject;

@property (readwrite)	CFURLRef	funkyDrummerFileURLRef;
@property (readonly)	SystemSoundID	funkyDrummerFileObject;

@property (readwrite)	CFURLRef	rockSteadyFileURLRef;
@property (readonly)	SystemSoundID	rockSteadyFileObject;

- (IBAction) playAmenSound: (id) sender;
- (IBAction) playThinkSound: (id) sender;
- (IBAction) playFunkyDrummerSound: (id) sender;
- (IBAction) playRockSteadySound: (id) sender;

@end
