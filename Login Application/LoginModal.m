//
//  LoginModal.m
//  Login Application
//
//  Created by student1 on 4/27/14.
//  Copyright (c) 2014 student1. All rights reserved.
//

#import "LoginModal.h"

@implementation LoginModal

-(BOOL) verifyUser:(NSString *)userId andPassword:(NSString *)password{
    if ([userId isEqualToString:password]) {
        return TRUE;
    }
    else{
        return FALSE;
    }
}

@end
