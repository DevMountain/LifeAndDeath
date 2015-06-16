//
//  Person.m
//  LifeAndDeath
//
//  Created by Caleb Hicks on 3/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
     self = [super init];
    
    if (dictionary[FirstNameKey]) {
        self.firstName = dictionary[FirstNameKey];
    }
    
    if (dictionary[LastNameKey]) {
        self.lastName = dictionary[LastNameKey];
    }
    
    if (dictionary[BirthDateKey]) {
        self.birthDate = dictionary[BirthDateKey];
    }
    
    if ([dictionary[BirthPlaceKey] class] == [CLLocation class]) {
        self.birthPlace = dictionary[BirthPlaceKey];
    }
    
    if (dictionary[DeathDateKey]) {
        self.deathDate = dictionary[DeathDateKey];
    } else {
        self.deathDate = @"N/A";
    }
    
    if ([dictionary[DeathPlaceKey] class] == [CLLocation class]) {
        self.deathPlace = dictionary[DeathPlaceKey];
    }
    
    return self;
}

@end