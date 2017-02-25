//
//  ViewController.m
//  LeverHeigher
//
//  Created by shizi on 2017/2/17.
//  Copyright © 2017年 pangpangCompany. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>
@interface ViewController ()<CLLocationManagerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor brownColor];
    self.title=@"what";
    CLLocationManager *manager=[[CLLocationManager alloc]init];
    manager.delegate=self;
        [manager requestWhenInUseAuthorization];
    [manager startUpdatingLocation];

}

- (void)locationManager:(CLLocationManager *)manager
     didUpdateLocations:(NSArray<CLLocation *> *)locations
{
    NSLog(@"%@",locations);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
