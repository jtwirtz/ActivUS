//
//  UserEventsVC.m
//  ActivUS
//
//  Created by Kawika Avilla on 4/28/16.
//  Copyright © 2016 Joseph Wirtz. All rights reserved.
//

#import "UserEventsVC.h"

@interface UserEventsVC ()
@property (weak, nonatomic) IBOutlet UIButton *findAnEventButton;
@property (weak, nonatomic) IBOutlet UIButton *hostAnEventButton;
@property (weak, nonatomic) IBOutlet UIImageView *userImageView;

@end

@implementation UserEventsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.findAnEventButton.layer.cornerRadius = 7;
    self.findAnEventButton.layer.borderWidth = 2;
    self.findAnEventButton.layer.borderColor = [UIColor grayColor].CGColor;
    
    self.hostAnEventButton.layer.cornerRadius = 7;
    self.hostAnEventButton.layer.borderWidth = 2;
    self.hostAnEventButton.layer.borderColor = [UIColor grayColor].CGColor;
    
    self.userImageView.layer.cornerRadius = self.userImageView.frame.size.width/2;
    self.userImageView.clipsToBounds = YES;
    self.userImageView.layer.borderWidth = 2;
    self.userImageView.layer.borderColor = [UIColor grayColor].CGColor;
    //TODO get user image from facebook
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
