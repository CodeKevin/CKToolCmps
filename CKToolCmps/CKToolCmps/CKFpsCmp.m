//
//  CKFPSCmp.m
//  CKToolCmps
//
//  Created by Kevin on 2021/8/19.
//

#import "CKFpsCmp.h"
#import "CKWeakObject.h"

@implementation CKFpsCmp {
    CADisplayLink *_link;
    NSTimeInterval _lastTime;
    NSUInteger _count;
    CKFPSBlock fpsBlock;
}

- (void)startFPSMeasureBlock:(CKFPSBlock)block {
    if (!block) {
        return;
    }
    fpsBlock = [block copy];
    _link = [CADisplayLink displayLinkWithTarget:[CKWeakObject weakObjectWithTarget:self] selector:@selector(tick:)];
    [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
}

- (void)stopFPSMeasure {
    [_link invalidate];
    _link = nil;
}

- (void)tick:(CADisplayLink *)link {
    if (_lastTime == 0) {
        _lastTime = link.timestamp;
        return;
    }
    _count++;
    NSTimeInterval delta = link.timestamp - _lastTime;
    if (delta < 1) return;
    _lastTime = link.timestamp;
    float fps = _count / delta;
    _count = 0;
    if (fpsBlock) {
        fpsBlock(fps);
    }
}

- (void)dealloc {
    [self stopFPSMeasure];
}

@end
