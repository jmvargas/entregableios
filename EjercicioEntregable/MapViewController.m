//
//  MapViewController.m
//  EjercicioEntregable
//
//  Created by Jesús Manuel Vargas Sosa on 21/6/15.
//  Copyright (c) 2015 Jesús Manuel Vargas Sosa. All rights reserved.
//

#import "MapViewController.h"
#import "UserPreferences.h"
@import MapKit;

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    MKCoordinateRegion mapRegion;
    mapRegion.center.latitude = [(NSString*)[UserPreferences readPreferencesFromKey:@"lat"] doubleValue];
    mapRegion.center.longitude = [(NSString*)[UserPreferences readPreferencesFromKey:@"lon"] doubleValue];
    mapRegion.span.latitudeDelta = 0.02;
    mapRegion.span.longitudeDelta = 0.02;
    _map.region = mapRegion;
    [_map setMapType:MKMapTypeStandard];
    [_mapType setEnabled:true forSegmentAtIndex:0];
    [_mapType setEnabled:false forSegmentAtIndex:1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mapTypeValueChanged:(id)sender {
    if([_mapType isEnabledForSegmentAtIndex: 0]){
        [_mapType setEnabled:false forSegmentAtIndex:1];
        [_map setMapType:MKMapTypeStandard];
    }else if([_mapType isEnabledForSegmentAtIndex:1]){
        [_mapType setEnabled:false forSegmentAtIndex:0];
        [_map setMapType:MKMapTypeSatellite];
        
    }
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
