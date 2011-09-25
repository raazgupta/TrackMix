//
//  TrackMixAppDelegate.m
//  TrackMix
//
//  Created by Raj Gupta on 25/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TrackMixAppDelegate.h"
#import "Track.h"

@implementation TrackMixAppDelegate

@synthesize track;
@synthesize window;
@synthesize textField;
@synthesize slider;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    Track *aTrack = [[Track alloc] init];
    [self setTrack:aTrack];
    [aTrack release];
    
    [self updateUserInterface];
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    NSString *senderName = nil;
    if (sender == textField) {
        senderName = @"textField";
    }
    else {
        senderName = @"slider";
    }
    
    NSLog(@"%@ sent takeFloatValueForVolumeFrom: with value %1.2f", senderName, [sender floatValue]);
    
    float newValue = [sender floatValue];
    [self.track setVolume:newValue];
    [self updateUserInterface];
    
}

- (IBAction)mute:(id)sender {
    NSLog(@"received a mute: message");
    [self.track setVolume:0.0];
    [self updateUserInterface];
}

- (void)dealloc {
    [track release];
    [super dealloc];
}

- (void)updateUserInterface {
    float volume = [self.track volume];
    [self.textField setFloatValue:volume];
    [self.slider setFloatValue:volume];
}





@end
