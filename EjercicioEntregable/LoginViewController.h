//
//  LoginViewController.h
//  EjercicioEntregable
//
//  Created by Jesús Manuel Vargas Sosa on 21/6/15.
//  Copyright (c) 2015 Jesús Manuel Vargas Sosa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelError;
@property (weak, nonatomic) IBOutlet UITextField *inputUser;
@property (weak, nonatomic) IBOutlet UITextField *inputPassword;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;
- (IBAction)submitButton:(id)sender;

@end
