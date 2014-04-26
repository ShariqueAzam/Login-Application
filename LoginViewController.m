//
//  LoginViewController.m
//  Login Application
//
//  Created by student1 on 4/27/14.
//  Copyright (c) 2014 student1. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginModal.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize loginModal,userID,password;

-(IBAction)login:(id)sender{
    [userID resignFirstResponder];
    [password resignFirstResponder];
    NSString *name=userID.text;
    NSString *pass=password.text;
    NSLog(@"UserName is %@ and password is %@",name,pass);
    bool result =[loginModal verifyUser:name andPassword:pass];
    if (!result) {
        [self printMessage:@"Incorrect UserId or Password"];
    }else{
        [self printMessage:@"Welcome to the Application"];
    }

}

-(void) printMessage:(NSString *)name{
    UIAlertView *alertPopUp=[[UIAlertView alloc]initWithTitle:@"Alert" message:name delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertPopUp show];
    NSLog(@"The message is %@",name);
}

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
    loginModal=[[LoginModal alloc]init];
    userID.delegate=self;
    password.delegate=self;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [userID resignFirstResponder];
    [password resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
