//
//  AVAudioPlayer.m
//
//  Created by cyrozap on 5/8/10.
//  This work is licensed under a Creative Commons GNU General Public License License.

//#import "AVAudioPlayer.h"
#import <AVFoundation/AVFoundation.h>

@implementation AVAudioPlayer
AVAudioPlayer* player;
//...
/* Both these actions are hooked up to buttons in IB */
- (IBAction)startPlayback:(UIButton *)sender {
    if(!player){
        /*
         * Here we grab our path to our resource
         */
        NSString* resourcePath = [[NSBundle mainBundle] resourcePath];
        resourcePath = [resourcePath stringByAppendingString:@"/codes.wav"];
        NSLog(@"Path to play: %@", resourcePath);
        NSError* err;
		
        //Initialize our player pointing to the path to our resource
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:
				  [NSURL fileURLWithPath:resourcePath] error:&err];
		
        if( err ){
            //bail!
            NSLog(@"Failed with reason: %@", [err localizedDescription]);
        }
        else{
            //set our delegate and begin playback
            player.delegate = self;
            [player play];
        }
    }
}
- (IBAction)pausePlayback:(UIButton*)sender {
    NSLog(@"Player paused at time: %f", player.currentTime);
    [player pause];
}

@end
