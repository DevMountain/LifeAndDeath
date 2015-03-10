//
//  PersonController.m
//  LifeAndDeath
//
//  Created by Caleb Hicks on 3/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "PersonController.h"

@implementation PersonController

+ (PersonController *)sharedInstance {
    static PersonController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [PersonController new];
    });
    return sharedInstance;
}

- (NSArray *)persons {
    
    NSMutableArray *persons = [NSMutableArray new];
    
    for (NSDictionary *dictionary in self.personDictionaries) {
        Person *person = [[Person alloc] initWithDictionary:dictionary];
        [persons addObject:person];
    }
    
    return persons;
}

- (NSArray *)personDictionaries {
    return @[
             @{FirstNameKey: @"John",
               LastNameKey: @"Lennon",
               BirthDateKey: @"1940-10-09",
               BirthPlaceKey: [[CLLocation alloc] initWithLatitude:53.4167 longitude:3.0000],
               DeathDateKey: @"1980-12-08",
               DeathPlaceKey: [[CLLocation alloc] initWithLatitude:40.7142 longitude:74.0064],
               },
             @{FirstNameKey: @"Paul",
               LastNameKey: @"McCartney",
               BirthDateKey: @"1942-06-18",
               BirthPlaceKey: [[CLLocation alloc] initWithLatitude:53.4167 longitude:3.0000],
               },
             @{FirstNameKey: @"George",
               LastNameKey: @"Harrison",
               BirthDateKey: @"1943-02-25",
               BirthPlaceKey: [[CLLocation alloc] initWithLatitude:53.4167 longitude:3.0000],
               DeathDateKey: @"2001-11-29",
               DeathPlaceKey: [[CLLocation alloc] initWithLatitude:34.0522 longitude:118.2428],
               },
             @{FirstNameKey: @"Ringo",
               LastNameKey: @"Starr",
               BirthDateKey: @"1940-07-07",
               BirthPlaceKey: [[CLLocation alloc] initWithLatitude:53.4167 longitude:3.0000],
               }
             ];
}

@end
