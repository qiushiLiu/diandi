//
//  DDTabBarViewController.m
//  diandi
//
//  Created by kjubo on 15/8/25.
//  Copyright (c) 2015年 kjubo. All rights reserved.
//

#import "DDTabBarViewController.h"
#import "DDSpotViewController.h"
#import "UITabBarItem+Universal.h"

@interface DDTabBarViewController ()<UITabBarControllerDelegate>
@property (nonatomic, strong)UINavigationController *ncMain;
@property (nonatomic, strong)UINavigationController *ncSpot;
@property (nonatomic, strong)UINavigationController *ncNote;
@end

@implementation DDTabBarViewController

- (id)init{
    if(self = [super init]){
        self.delegate = self;
        
        UIViewController *mainVc = [[UIViewController alloc] init];
        self.ncMain = [[UINavigationController alloc] initWithRootViewController:mainVc];
        self.ncMain.tabBarItem =[UITabBarItem itemWithTitle:@"我的" image:[UIImage imageNamed:@"icon_tab0"] selectedImage:[UIImage imageNamed:@"icon_tab0_hl"]];
        
        DDSpotViewController *contactsVc = [[DDSpotViewController alloc] init];
        self.ncSpot = [[UINavigationController alloc] initWithRootViewController:contactsVc];
        self.ncSpot.tabBarItem =[UITabBarItem itemWithTitle:@"目的地" image:[UIImage imageNamed:@"icon_tab1"] selectedImage:[UIImage imageNamed:@"icon_tab1_hl"]];
        
        self.ncNote = [[UINavigationController alloc] initWithRootViewController:[UIViewController new]];
        self.ncNote.tabBarItem = [UITabBarItem itemWithTitle:@"游记" image:[UIImage imageNamed:@"icon_tab2"] selectedImage:[UIImage imageNamed:@"icon_tab2_hl"]];
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
