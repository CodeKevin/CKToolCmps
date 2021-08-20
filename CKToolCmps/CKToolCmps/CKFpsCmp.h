//
//  CKFPSCmp.h
//  CKToolCmps
//
//  Created by Kevin on 2021/8/19.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^CKFPSBlock)(CGFloat fps);

@interface CKFpsCmp : NSObject

- (void)startFPSMeasureBlock:(CKFPSBlock)block;
- (void)stopFPSMeasure;

@end

NS_ASSUME_NONNULL_END
