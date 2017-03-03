//
//  ViewController.m
//  LeverHeigher
//
//  Created by shizi on 2017/2/17.
//  Copyright © 2017年 pangpangCompany. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>
#import <SystemConfiguration/CaptiveNetwork.h>
#include <dlfcn.h>
@interface ViewController ()<CLLocationManagerDelegate>

@end
CFMachPortRef port;
struct CTServerConnection *sc=NULL;
struct CTServerConnection scc;
struct CellInfo cellinfo;
int b;
int t1;
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
    
    NSLog(@"heloo");
    
    
    id info = nil;
    NSArray *ifs = (__bridge_transfer id)CNCopySupportedInterfaces();
    for (NSString *ifnam in ifs) {
        info = (__bridge_transfer id)CNCopyCurrentNetworkInfo((__bridge CFStringRef)ifnam);
        NSString *str = info[@"SSID"];
        NSString *str2 = info[@"BSSID"];
        NSString *str3 = [[ NSString alloc] initWithData:info[@"SSIDDATA"] encoding:NSUTF8StringEncoding];
        NSLog(@"当前链接的Wi-Fi名称是：%@,信号强度是：%@，----%@",str,str2,str3);
        
    }
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
