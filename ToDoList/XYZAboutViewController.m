//
//  XYZAboutViewController.m
//  ToDoList
//
//  Created by Student on 5/9/14.
//  Copyright (c) 2014 Ryan. All rights reserved.
//

#import "XYZAboutViewController.h"

@interface XYZAboutViewController ()


@end

@implementation XYZAboutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"About";
    [self buildUI];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)buildUI
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 80, 300, 300)];
    [label setText:@"Made (very poorly) By Ryan Hill"];
    label.numberOfLines = 0;
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    UIButton *linkButton = [[UIButton alloc] initWithFrame:CGRectMake(20, 20, 200, 50)];
    linkButton.center = self.view.center;
    linkButton.backgroundColor = [UIColor colorWithRed:0.204 green:0.667 blue:0.863 alpha:1]; // [UIColor blueColor];

    [linkButton setTitle:@"GitHub Page" forState:UIControlStateNormal];
    [linkButton addTarget:self action:@selector(openGitHub) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:linkButton];
    
}

-(void)openGitHub
{
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 64, 320, 480)];
    NSString *gitString = @"https://github.com/rthill91/ToDoList.git";
    NSURL *gitURL = [NSURL URLWithString:gitString];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:gitURL];
    [webView loadRequest:requestObj];
    
    [self.view addSubview:webView];
}



@end
