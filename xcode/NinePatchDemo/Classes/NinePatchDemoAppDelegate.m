//
//  NinePatchDemoAppDelegate.m
//  NinePatchDemo
//
//  Copyright Tortuga 22, Inc 2009. All rights reserved.
//

#import "NinePatchDemoAppDelegate.h"
#import "MainViewController.h"

@implementation NinePatchDemoAppDelegate


@synthesize window;
@synthesize mainViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    MainViewController *aController = [[MainViewController alloc] initWithNibName:@"MainView" bundle:nil];
    self.mainViewController = aController;
    //	[aController release];
    
    mainViewController.view.frame = [UIScreen mainScreen].applicationFrame;
    //	[window addSubview:[mainViewController view]];
    window.rootViewController = self.mainViewController;
    [window makeKeyAndVisible];
    return YES;
}



- (void)dealloc {
    [mainViewController release];
    [window release];
    [super dealloc];
}

@end
