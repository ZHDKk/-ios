//
//  VCRoot.m
//  导航控制器技术
//
//  Created by zh dk on 2017/8/24.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
    //设置导航栏的标题文字
    self.title = @"跟视图";
    //设置导航元素项目的标题
    self.navigationItem.title = @"Title";
    
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"左侧" style:UIBarButtonItemStyleDone target:self action:@selector(pressLeft)];
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    UIBarButtonItem *rigthBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(pressRight)];
    
    self.navigationItem.rightBarButtonItem = rigthBtn;
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 50, 40)];
    lable.text = @"test";
    lable.textAlignment = NSTextAlignmentCenter;
    lable.textColor = [UIColor blueColor];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:lable];
    
    NSArray *arrayBtn = [NSArray arrayWithObjects:rigthBtn,item, nil];
    self.navigationItem.rightBarButtonItems = arrayBtn;
}

-(void) pressRight
{
    NSLog(@"右侧按钮被按下");
}

-(void) pressLeft
{
    NSLog(@"左侧按钮被按下");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
