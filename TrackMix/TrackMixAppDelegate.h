//
//  TrackMixAppDelegate.h
//  TrackMix
//
//  Created by Raj Gupta on 25/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Track;

@interface TrackMixAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    NSTextField *textField;
    NSSlider *slider;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *textField;
@property (assign) IBOutlet NSSlider *slider;
@property (retain) Track *track;

- (IBAction)takeFloatValueForVolumeFrom:(id)sender;
- (IBAction)mute:(id)sender;
- (void)updateUserInterface;



@end
