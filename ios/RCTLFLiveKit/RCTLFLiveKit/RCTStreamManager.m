//
//  RCTStreamManager.m
//  RCTLFLiveKit
// 

#import <Foundation/Foundation.h>
#import "RCTBridge.h"
#import "RCTStreamManager.h"
#import "RCTStream.h"

@implementation RCTStreamManager

RCT_EXPORT_MODULE();

- (UIView *) view
{
    return [[RCTStream alloc] initWithManager:self bridge:self.bridge];
}

- (NSArray *) customDirectEventTypes
{
    return @[
             @"onReady",
             @"onPending",
             @"onStart",
             @"onError",
             @"onStop"
            ];
}

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_VIEW_PROPERTY(started, BOOL);
RCT_EXPORT_VIEW_PROPERTY(cameraFronted, BOOL);
RCT_EXPORT_VIEW_PROPERTY(url, NSString);
RCT_EXPORT_VIEW_PROPERTY(landscape, BOOL);

/** The beautyFace control capture shader filter empty or beautiy */
RCT_EXPORT_VIEW_PROPERTY(beautyFace, BOOL);

/** The beautyLevel control beautyFace Level. Default is 0.5, between 0.0 ~ 1.0 */
// RCT_EXPORT_VIEW_PROPERTY(beautyLevel, CGFloat);

/** The brightLevel control brightness Level, Default is 0.5, between 0.0 ~ 1.0 */
// RCT_EXPORT_VIEW_PROPERTY(brightLevel, CGFloat);

/** The torch control camera zoom scale default 1.0, between 1.0 ~ 3.0 */
// RCT_EXPORT_VIEW_PROPERTY(zoomScale, CGFloat);

/** The torch control capture flash is on or off */
// RCT_EXPORT_VIEW_PROPERTY(torch, BOOL);

/** The mirror control mirror of front camera is on or off */
RCT_EXPORT_VIEW_PROPERTY(mirror, BOOL);

/** The muted control callbackAudioData,muted will memset 0.*/
// RCT_EXPORT_VIEW_PROPERTY(muted, BOOL);

/*  The adaptiveBitrate control auto adjust bitrate. Default is NO */
// RCT_EXPORT_VIEW_PROPERTY(adaptiveBitrate, BOOL);

/* The reconnectInterval control reconnect timeInterval(重连间隔) */
// RCT_EXPORT_VIEW_PROPERTY(reconnectInterval, NSUInteger);

/* The reconnectCount control reconnect count (重连次数) */
// RCT_EXPORT_VIEW_PROPERTY(reconnectCount, NSUInteger);

@end
