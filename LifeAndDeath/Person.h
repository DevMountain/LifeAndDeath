//
//  Person.h
//  LifeAndDeath
//
//  Created by Caleb Hicks on 3/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
@import MapKit;

static NSString * const FirstNameKey = @"firstname";
static NSString * const LastNameKey = @"lastname";
static NSString * const BirthDateKey = @"birthdate";
static NSString * const BirthPlaceKey = @"birthplace";
static NSString * const DeathDateKey = @"deathdate";
static NSString * const DeathPlaceKey = @"deathplace";

typedef NS_ENUM(NSUInteger, LifeEvent) {
    LifeEventBirth,
    LifeEventDeath,
};

@interface Person : NSObject

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;

@property (strong, nonatomic) NSString *birthDate;
@property (strong, nonatomic) CLLocation *birthPlace;

@property (strong, nonatomic) NSString *deathDate;
@property (strong, nonatomic) CLLocation *deathPlace;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
