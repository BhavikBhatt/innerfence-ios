//
//  ViewController.m
//  ChargeDemo
//
//  Created by Ryan D Johnson on 10/5/15.
//  Copyright © 2015 Inner Fence. All rights reserved.
//

#import "RNInnerfence.h"

#import "React/RCTBridge.h"
#import "React/RCTConvert.h"

#import "../innerfence/IFChargeRequest.h"
#import "../innerfence/IFChargeResponse.h"

@interface RNInnerfence ()

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location)
{
  RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}

@end

@implementation RNInnerfence

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)chargeTapped:(id)sender {
    IFChargeRequest* chargeRequest = [IFChargeRequest new];

    // Include my record_id so it comes back with the response
    [chargeRequest
        setReturnURL:@"com-innerfence-ChargeDemo://chargeResponse"
        withExtraParams:@{ @"record_id": @"123" }
    ];

    chargeRequest.amount        = @"50.00";
    chargeRequest.description   = @"Test transaction";
    chargeRequest.invoiceNumber = @"321";

    // Include a tax rate if you want Credit Card terminal to calculate
    // sales tax. If you pass in @"default", we'll use the default sales
    // tax preset by the user. If you leave it as nil, we’ll hide the
    // sales tax option from the user.
    chargeRequest.taxRate = @"8.5";

    [chargeRequest submit];
}

@end