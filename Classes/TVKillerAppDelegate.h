//
//  TVKillerAppDelegate.h
//  TVKiller
//
//  Created by cyrozap on 5/3/10.
//  This work is licensed under a Creative Commons GNU General Public License License.

@class MainViewController;

@interface TVKillerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MainViewController *mainViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) MainViewController *mainViewController;

@end

