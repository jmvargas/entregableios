//
//  LoginViewController.m
//  EjercicioEntregable
//
//  Created by Jesús Manuel Vargas Sosa on 21/6/15.
//  Copyright (c) 2015 Jesús Manuel Vargas Sosa. All rights reserved.
//

#import "LoginViewController.h"
#import "UserPreferences.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)submitButton:(id)sender {
    if ([[_inputUser text] length] == 0 || [[_inputPassword text]length] == 0) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Usuario incorrecto" message:@"El usuario o la contraseña introducidos no son correctos" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: nil];
        [alert show];
    }else{
        [UserPreferences savePreferencesFromKey:@"user_name" value:[_inputUser text]];
    }
}
@end
