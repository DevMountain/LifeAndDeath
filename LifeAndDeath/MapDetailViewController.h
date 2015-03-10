//
//  MapDetailViewController.h
//  LifeAndDeath
//
//  Created by Caleb Hicks on 3/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersonController.h"

@interface MapDetailViewController : UIViewController

@property (strong, nonatomic) Person *person;

- (void)updateWithPerson:(Person *)person;

@end
