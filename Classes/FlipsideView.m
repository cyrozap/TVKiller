//
//  FlipsideView.m
//  TVKiller
//
//  Created by cyrozap on 5/3/10.
//  This work is licensed under a Creative Commons GNU General Public License License.

#import "FlipsideView.h"

@implementation FlipsideView

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
	[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://github.com/cyrozap/TVKiller/raw/master/README"]]];
	
}

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    // Drawing code
}


- (void)dealloc {
    [super dealloc];
}


@synthesize webView;
@end
