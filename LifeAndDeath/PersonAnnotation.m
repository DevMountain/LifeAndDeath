//
//  PersonAnnotation.m
//  LifeAndDeath
//
//  Created by Caleb Hicks on 3/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

//  It is common to store annotations directly on model objects.

#import "PersonAnnotation.h"

@implementation PersonAnnotation

@synthesize coordinate;

// Returns custom annotation subclass (PersonAnnotation)
- (PersonAnnotation *)initWithPerson:(Person *)person lifeEvent:(LifeEvent)event {
    self = [super init];
    
    if (self)
    {
        // Depending on LifeEvent (Birth/Death), sets appropriate annotation properties
        switch (event)
        {
            case LifeEventBirth:
                coordinate = person.birthPlace.coordinate;
                self.title = [NSString stringWithFormat:@"The birthplace of %@ %@", person.firstName, person.lastName];
                break;
                
            case LifeEventDeath:
                coordinate = person.deathPlace.coordinate;
                self.title = [NSString stringWithFormat:@"Where %@ %@ passed away", person.firstName, person.lastName];
                break;
        }
    }
    
    return self;
}

@end
