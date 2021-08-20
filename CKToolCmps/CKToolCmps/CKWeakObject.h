//
//  CKWeakObject.h
//  CKToolCmps
//
//  Created by Kevin on 2021/8/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CKWeakObject : NSObject

@property (nonatomic, weak, readonly) NSObject *target;

+ (instancetype)weakObjectWithTarget:(NSObject *)target;

@end

NS_ASSUME_NONNULL_END
