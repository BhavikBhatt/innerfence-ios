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

RCT_EXPORT_METHOD(getDeviceName:(RCTResponseSenderBlock)callback){
 @try{
   NSString *deviceName = [[UIDevice currentDevice] name];
   callback(@[[NSNull null], deviceName]);
 }
 @catch(NSException *exception){
   callback(@[exception.reason, [NSNull null]]);
 }
}

@end