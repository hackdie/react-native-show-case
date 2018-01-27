
#import <Foundation/Foundation.h>

#import <React/RCTBridgeModule.h>
#import <React/RCTBridge.h>
#import <React/RCTEventEmitter.h>
#import <React/RCTRootView.h>


@interface RCT_EXTERN_MODULE(RNShowCase, RCTEventEmitter <RCTBridgeModule>)

RCT_EXTERN_METHOD(show: (nonnull NSNumber *) viewId title:(NSString *)title message:(NSString *)message)

+ (BOOL)requiresMainQueueSetup {
    return YES;
}


@end

