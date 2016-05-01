//
//  LoginVC.m
//  ActivUS
//
//  Created by Kawika Avilla on 4/30/16.
//  Copyright © 2016 Joseph Wirtz. All rights reserved.
//

#import "LoginVC.h"
#import "Backendless.h"

@interface LoginVC ()

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma IBAction

- (IBAction)loginWithFacebook:(UIButton *)sender
{
    [backendless.userService
     easyLoginWithFacebookFieldsMapping:@{@"email":@"email"}
     permissions:@[@"email"]
     response:^(id response) {
         NSLog(@"%@", response);
     }
     error:^(Fault *fault) {
         NSLog(@"%@", fault.detail);
     }];
}
@end
