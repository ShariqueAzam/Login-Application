//
//  LoginViewController.h
//  Login Application
//
//  Created by student1 on 4/27/14.
//  Copyright (c) 2014 student1. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LoginModal;
@interface LoginViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic)LoginModal *loginModal;
@property (strong, nonatomic)IBOutlet UITextField *userID;
@property (strong, nonatomic)IBOutlet UITextField *password;



-(IBAction)login:(id)sender;
-(void) printMessage:(NSString*)name;
@end
