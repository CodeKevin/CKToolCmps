//
//  CKWeakObject.m
//  CKToolCmps
//
//  Created by Kevin on 2021/8/19.
//

#import "CKWeakObject.h"

@interface CKWeakObject ()

@property (nonatomic, weak) NSObject *target;

@end

@implementation CKWeakObject

+ (instancetype)weakObjectWithTarget:(NSObject *)target {
    CKWeakObject *weak_obj = [[CKWeakObject alloc] init];
    weak_obj.target = target;
    return weak_obj;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    if (self.target && [self.target respondsToSelector:aSelector]) {
        return self.target;
    }
    return nil;
}

@end
