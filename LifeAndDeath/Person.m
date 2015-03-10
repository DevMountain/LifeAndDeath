//
//  Person.m
//  LifeAndDeath
//
//  Created by Caleb Hicks on 3/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Person.h"

@implementation Person

- (Person *)initWithDictionary:(NSDictionary *)dictionary {
    Person *person = [super init];
    
    if (dictionary[FirstNameKey]) {
        person.firstName = dictionary[FirstNameKey];
    }
    
    if (dictionary[LastNameKey]) {
        person.lastName = dictionary[LastNameKey];
    }
    
    if (dictionary[BirthDateKey]) {
        person.birthDate = dictionary[BirthDateKey];
    }
    
    if ([dictionary[BirthPlaceKey] class] == [CLLocation class]) {
        person.birthPlace = dictionary[BirthPlaceKey];
    }
    
    if (dictionary[DeathDateKey]) {
        person.deathDate = dictionary[DeathDateKey];
    } else {
        person.deathDate = @"N/A";
    }
    
    if ([dictionary[DeathPlaceKey] class] == [CLLocation class]) {
        person.deathPlace = dictionary[DeathPlaceKey];
    }
    
    return person;
}

@end