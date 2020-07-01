//
//  WZViewExtensionTestController.m
//  ZZFLEXDemo
//
//  Created by 王文照 on 2020/7/1.
//  Copyright © 2020 李伯坤. All rights reserved.
//

#import "WZViewExtensionTestController.h"

@interface WZViewExtensionTestController ()

@end

@implementation WZViewExtensionTestController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initSubUI];
}

- (void)initSubUI {
    
    WZVFLParseItem *item = [WZVFLParseItem ParseItemWithVisualFormar:@"H:|-10-[view1(view2)]-10-[view2(view3)]-10-[view3(view4)]-10-[view4]|" metrics:@{} views:@{
        @"view1":@"1",
        @"view2":@"2",
        @"view3":@"3",
        @"view4":@"4"
    } options:0];
    WZVFLParseItem *item1 = [WZVFLParseItem ParseItemWithVisualFormar:@"V:|-100-[view1(view2)]-10-[view2(view3)]-10-[view3(view4)]-10-[view4]-10-|" metrics:@{} views:@{
        @"view1":@"1",
        @"view2":@"2",
        @"view3":@"3",
        @"view4":@"4"
    } options:0];
    
    self.view.addSubView(^(__kindof UIView *view) {
        view.addView(1).backgroundColor(UIColor.redColor);
        view.addView(2).backgroundColor(UIColor.redColor);
        view.addView(3).backgroundColor(UIColor.redColor);
        view.addView(4).backgroundColor(UIColor.redColor);
    }).vfl(item).backgroundColor(UIColor.whiteColor).vfl(item1);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
