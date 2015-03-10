//
//  PersonController.h
//  LifeAndDeath
//
//  Created by Caleb Hicks on 3/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface PersonController : NSObject

@property (readonly, strong, nonatomic) NSArray *persons;

+ (PersonController *)sharedInstance;

@end
