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

	CFURLRef		soundFileURLRef;
	SystemSoundID	soundFileObject;

}

@property (readwrite)	CFURLRef		soundFileURLRef;
@property (readonly)	SystemSoundID	soundFileObject;

- (IBAction) playSystemSound: (id) sender;
- (IBAction) playAlertSound: (id) sender;
- (IBAction) vibrate: (id) sender;

@end
