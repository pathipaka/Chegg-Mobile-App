//
//  CheggHomeViewController.m
//  CheggMobileHome
//
//  Created by Om Pathipaka on 6/18/14.
//  Copyright (c) 2014 Om Pathipaka. All rights reserved.
//

#import "CheggHomeViewController.h"
#import "QuestionPageViewController.h"
#import "SearchQuestionViewController.h"

@interface CheggHomeViewController ()

- (IBAction)onQuestionItem:(id)sender;
- (IBAction)onSearchQuestion:(id)sender;
@end

@implementation CheggHomeViewController

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
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"chegg-logo-nav-bar"]];
    
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"hamburger"] style:UIBarButtonItemStylePlain target:self action:@selector(onLeftButton)];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"cart"] style:UIBarButtonItemStylePlain target:self action:@selector(onRightButton)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = backButton;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) onLeftButton {}

- (void) onRightButton {}

- (IBAction)onQuestionItem:(id)sender {
    NSLog(@"Question Item tapped");
    
    QuestionPageViewController *vc = [[QuestionPageViewController alloc] init];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)onSearchQuestion:(id)sender {
    SearchQuestionViewController *svc = [[SearchQuestionViewController alloc] init];
    svc.modalTransitionStyle = UIModalTransitionStyleCoverVertical; 
    
    [self presentViewController:svc animated:YES completion:nil];
    
}
@end
