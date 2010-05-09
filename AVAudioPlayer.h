//
//  AVAudioPlayer.h
//
//  Created by cyrozap on 5/8/10.
//  This work is licensed under a Creative Commons GNU General Public License License.

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface AVAudioPlayer : NSObject <UIApplicationDelegate> {
	AVAudioPlayer *player;
	UIButton *button;
	
}

@property (nonatomic, retain) AVAudioPlayer *player;
