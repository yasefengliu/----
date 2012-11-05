//
//  RootViewController.m
//  各种控件
//
//  Created by Ibokan on 12-10-17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "UIAdditions.h"
@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) 
    {
        // Custom initialization
    }
    return self;
}


- (void)didReceiveMemoryWarning
{
        [super didReceiveMemoryWarning];
    
    
}

#pragma mark - View lifecycle
-(void)tap:(UIButton *)sender
{
    DetailViewController *detailVC=[[DetailViewController alloc]init];
    detailVC.navigationItem.title=sender.titleLabel.text;
    detailVC.tag=sender.tag;
    detailVC.delegate=self;
    
    [self.navigationController pushViewController:detailVC animated:YES];
   
}
-(void)loadView
{
    UIView *aview=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    self.view=aview;
    [aview release];
    UIImage *bgimage=[[UIImage alloc]initWithContentsOfFile:[NSBundle  mainBundle]pathForResource:@"shufang" ofType:@"png"];
    UIImageView *imgv=[UIImageView imageViewWithFrame:CGRectMake(0, 0, 320, 406) image:bgimage userInteractionEnabled:YES ];
    [bgimage release];
    [aview addSubview:imgv];
    self.navigationItem.title=@"书房";
    self.navigationItem.prompt=nil;
    UIButton *btn1=[UIButton buttonWithFrame:CGRectMake(50, 20, 75, 55) title:@"三字经" titleColor:[UIColor redColor] target:self action:@selector(tap:)];
    [btn1 setBackgroundImage:[[UIImage   imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"beiying" ofType:@"png"]] forState:UIControlStateNormal]];
    
    btn1.tag=100;
     
    
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
