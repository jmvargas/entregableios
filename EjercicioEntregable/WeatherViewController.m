//
//  WeatherViewController.m
//  EjercicioEntregable
//
//  Created by Jesús Manuel Vargas Sosa on 21/6/15.
//  Copyright (c) 2015 Jesús Manuel Vargas Sosa. All rights reserved.
//

#import "WeatherViewController.h"

@interface WeatherViewController ()

@end

@implementation WeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dataPicker = @[@"Seville,es", @"Madrid,es", @"London,uk", @"Berlin,de", @"Paris,fr", @"Rome,it", @"NewYork,us", @"Shanghai,ch", @"Moscow,ru"];
    
    _cityPicker.delegate = self; 
    _cityPicker.dataSource = self;
    
    NSMutableString *urlString = [[NSMutableString alloc]initWithString:@"http://api.openweathermap.org/data/2.5/weather?q="];
    [urlString appendString: _dataPicker[0]];
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:req queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        if (data.length > 0 && connectionError == nil){
            NSDictionary *weatherInfo = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
            NSArray *weather = [weatherInfo valueForKey:@"weather"];
            [_weatherLabel setText:[NSString stringWithFormat:@"%@",[weather[0] valueForKey:@"description"]]];
        }
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// The number of columns of data
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _dataPicker.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _dataPicker[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSMutableString *urlString = [[NSMutableString alloc]initWithString:@"http://api.openweathermap.org/data/2.5/weather?q="];
    [urlString appendString: _dataPicker[row]];
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:req queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        if (data.length > 0 && connectionError == nil){
            NSDictionary *weatherInfo = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
            NSArray *weather = [weatherInfo valueForKey:@"weather"];
            [_weatherLabel setText:[NSString stringWithFormat:@"%@",[weather[0] valueForKey:@"description"]]];
        }
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
