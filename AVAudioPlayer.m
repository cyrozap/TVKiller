//
//  AVAudioPlayer.m
//
//  Created by cyrozap on 5/8/10.
//  This work is licensed under a Creative Commons GNU General Public License License.

#import "AVAudioPlayer.h"

@implementation AVAudioPlayer

@synthesize player; // the player object

NSString *soundFilePath =
[[NSBundle mainBundle] pathForResource: @"%@/codes.mp3"
								ofType: @"mp3"];

NSURL *fileURL = [[NSURL alloc] initFileURLWithPath: soundFilePath];

AVAudioPlayer *newPlayer =
[[AVAudioPlayer alloc] initWithContentsOfURL: fileURL
									   error: nil];
[fileURL release];

self.player = newPlayer;
[newPlayer release];

[player prepareToPlay];
[player setDelegate: self];

- (void) audioPlayerDidFinishPlaying: (AVAudioPlayer *) player
                        successfully: (BOOL) completed {
    if (completed == YES) {
        [self.button forState: UIControlStateNormal];
    }
}

- (IBAction) playOrPause: (id) sender {
	
    // if already playing, then pause
    if (self.player.playing) {
        [self.button forState: UIControlStateHighlighted];
        [self.button forState: UIControlStateNormal];
        [self.player stop];
		
		// if stopped or paused, start playing
    } else {
        [self.button forState: UIControlStateHighlighted];
        [self.button forState: UIControlStateNormal];
        [self.player play];
		
    }
}

@end
