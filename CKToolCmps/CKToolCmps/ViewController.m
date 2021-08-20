//
//  ViewController.m
//  CKToolCmps
//
//  Created by Kevin on 2021/8/19.
//

#import "ViewController.h"
#import "CKFpsCmp.h"

@interface ViewController ()

@property (nonatomic, strong) CKFpsCmp *fpscmp;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _fpscmp = [[CKFpsCmp alloc] init];
    [_fpscmp startFPSMeasureBlock:^(CGFloat fps) {
        NSLog(@"df_log:%.0f",fps);
    }];
    
    // Do any additional setup after loading the view.
}


@end
