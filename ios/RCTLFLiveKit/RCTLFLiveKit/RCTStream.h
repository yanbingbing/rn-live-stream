//
//  RCTStream.h
//  RCTLFLiveKit
//

#import <UIKit/UIKit.h>

@class RCTStreamManager;

@interface RCTStream : UIView

- (id) initWithManager: (RCTStreamManager*) manager bridge:(RCTBridge *) bridge;

@end
