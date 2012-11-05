//
//  DetailViewController.m
//  各种控件
//
//  Created by Ibokan on 12-10-17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"
#import "UIAdditions.h"
@implementation DetailViewController
@synthesize tag;
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)dealloc
{
    [_tf release];
    [_imgv release];
    self.delegate=nil;
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
-(void)back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)changeTitleWithButton:(UIButton *)sender
{
    if (delegate &&[delegate respondsToSelector:@selector(setTitle:tag:)]) {
        [delegate setTitle:_tf tag:tag];
    }
}


- (void)loadView
{
    UIView *bgview=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 460-44)];
    self.view=bgview;
    [bgview release];
    
    UIImage *bgimae=[[UIImage alloc]initWithContentsOfFile:[[NSBundle mainBundle]pathForResouse:@"btn_back" ofType:@"png"]];
    UIButton *backbtn=[UIButton buttonWithType:UIButtonTypeCustom frame:CGRectMake(0, 0, 62, 30) title:nil backgroundImage:bgimae target:self action:@selector(back:)];
    [bgimae release];
    UIBarButtonItem *leftBarBtn=[[UIBarButtonItem alloc]initWithCustomView:backbtn];
    self.navigationItem.leftBarButtonItem=leftBarBtn;
    [leftBarBtn release];
    UIBarButtonItem *right=[[UIBarButtonItem alloc]initWithTitle:@"出版社" style:UIBarButtonItemStylePlain    target:self action:@selector(pressAction:)];
    self.navigationItem.rightBarButtonItem=right;
    [right release];
    
    _imgv = [UIImageView imageViewWithFrame:CGRectMake(80, 40, 160, 250) image:nil userInteractionEnabled:YES];
    [bgview addSubview:_imgv];
    _tf=[[UITextField alloc]initWithFrame:CGRectMake(80, 310, 120, 30)];
    _tf.borderStyle=UITextBorderStyleRoundedRect;
    _tf.delegate=self;
    [bgimae addSubview:_tf];
    UIButton *changBtn=[UIButton buttonWithFrame:CGRectMake(220, 310, 60, 30) title:@"改变" titleColor:[UIColor redColor] target:self action:@selector(changetitleWithBtn:)];
    [bgview addSubview:changBtn];
    
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    switch (tag) {
        case 100:
           _imgv.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"szj" ofType:@"png"]];           
            break;
        case 101:
            _imgv.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"beixing" ofType:@"png"]];
            break;
        case 102:
            _imgv.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"yecao" ofType:@"png"]];
            break;
            
        default:
            break;
    }
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    [UIView beginAnimations:@"up" context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    self.view.frame=CGRectMake(0, -190, 320, 480);
    [UIView commitAnimations];
       return YES;
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    [UIView beginAnimations:@"down" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:0.5];
    self.view.frame=CGRectMake(0, 0, 320, 480);
    [UIView commitAnimations];
    self.navigationItem.title=textField.text;
    return YES;
    
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
