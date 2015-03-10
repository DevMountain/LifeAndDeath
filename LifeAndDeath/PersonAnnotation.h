//
//  PersonAnnotation.h
//  LifeAndDeath
//
//  Created by Caleb Hicks on 3/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@import MapKit;

@interface PersonAnnotation : NSObject <MKAnnotation> {
    CLLocationCoordinate2D coordinate;
}

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;

- (PersonAnnotation *)initWithPerson:(Person *)person lifeEvent:(LifeEvent)event;

@end
