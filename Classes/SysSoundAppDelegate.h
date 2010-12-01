#import <UIKit/UIKit.h>

@class SysSoundViewController;

@interface SysSoundAppDelegate : NSObject <UIApplicationDelegate> {

    UIWindow               *window;
    SysSoundViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SysSoundViewController *viewController;

@end
