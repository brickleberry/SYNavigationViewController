//
//  AnimationCameraVC.m
//  DemoNavigationController
//
//  Created by zhangshaoyu on 17/6/5.
//  Copyright © 2017年 zhangshaoyu. All rights reserved.
//

#import "AnimationCameraVC.h"

@interface AnimationCameraVC ()

@end

@implementation AnimationCameraVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.sy_navigationController navigationControllerAnimation:0.6 type:@"cameraIrisHollowClose" subType:kCATransitionFromRight function:kCAMediaTimingFunctionLinear];
    
    if ([self.sy_navigationController.sy_viewControllers.firstObject isEqual:self])
    {
        [self.sy_navigationController dismissViewControllerAnimated:YES completion:nil];
    }
    else
    {
        [self.sy_navigationController popViewControllerAnimated:YES];
    }
}

@end
