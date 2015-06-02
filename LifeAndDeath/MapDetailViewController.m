//
//  MapDetailViewController.m
//  LifeAndDeath
//
//  Created by Caleb Hicks on 3/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "MapDetailViewController.h"
#import "PersonAnnotation.h"
@import MapKit;

@interface MapDetailViewController () <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation MapDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self updateWithPerson:self.person];
}

// Sets person property on ViewController, checks person for birth/deathplace and adds custom annotation to mapView
- (void)updateWithPerson:(Person *)person {
    self.person = person;
    
    if (person.birthPlace) {
        [self.mapView addAnnotation:[[PersonAnnotation alloc] initWithPerson:person lifeEvent:LifeEventBirth]];
    }
    
    if (person.deathPlace) {
        [self.mapView addAnnotation:[[PersonAnnotation alloc] initWithPerson:person lifeEvent:LifeEventDeath]];
    }
}

// MKMapViewDelegate method that returns view for MKAnnotation
- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    
    MKPinAnnotationView *annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"personAnnotation"];
    
    annotationView.pinColor = MKPinAnnotationColorPurple;
    annotationView.animatesDrop = YES;
    annotationView.canShowCallout = YES;
    
    return annotationView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
