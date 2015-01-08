//
//  ViewController.m
//  ScheduleLocalNotification
//
//  Created by JatWaston on 15-1-8.
//  Copyright (c) 2015年 JatWaston. All rights reserved.
//

#import "ViewController.h"
#import "LocalNotificationManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSDate *date = [[LocalNotificationManager defaultManager] createTimeWithString:@"12:00:00"];
    [[LocalNotificationManager defaultManager] pushNotificationMessage:@"12点通知"
                                                              userInfo:nil
                                                              pushTime:date
                                                              pushRate:NSCalendarUnitDay];
    
    NSDate *date1 = [[LocalNotificationManager defaultManager] createTimeWithString:@"17:00:00"];
    [[LocalNotificationManager defaultManager] pushNotificationMessage:@"17点通知"
                                                              userInfo:nil
                                                              pushTime:date1
                                                              pushRate:NSCalendarUnitDay];
    
    NSDate *date2 = [[LocalNotificationManager defaultManager] createTimeWithString:@"20:00:00"];
    [[LocalNotificationManager defaultManager] pushNotificationMessage:@"20点通知"
                                                              userInfo:nil
                                                              pushTime:date2
                                                              pushRate:NSCalendarUnitDay];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
