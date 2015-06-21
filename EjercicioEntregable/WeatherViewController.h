//
//  WeatherViewController.h
//  EjercicioEntregable
//
//  Created by Jesús Manuel Vargas Sosa on 21/6/15.
//  Copyright (c) 2015 Jesús Manuel Vargas Sosa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeatherViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIPickerView *cityPicker;
@property (weak, nonatomic) IBOutlet UILabel *weatherLabel;
@property NSArray* dataPicker;
@property (weak, nonatomic) IBOutlet UILabel *velocityLabel;
@property (weak, nonatomic) IBOutlet UILabel *temperatureLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageWeather;
@end
