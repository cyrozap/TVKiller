//
//  TVKillerAppDelegate.m
//  TVKiller
//
//  Created by cyrozap on 5/3/10.
//  This work is licensed under a Creative Commons GNU General Public License License.

#import "TVKillerAppDelegate.h"
#import "MainViewController.h"

@implementation TVKillerAppDelegate


@synthesize window;
@synthesize mainViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
	MainViewController *aController = [[MainViewController alloc] initWithNibName:@"MainView" bundle:nil];
	self.mainViewController = aController;
	[aController release];
	
    mainViewController.view.frame = [UIScreen mainScreen].applicationFrame;
	[window addSubview:[mainViewController view]];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [mainViewController release];
    [window release];
    [super dealloc];
}

@end
