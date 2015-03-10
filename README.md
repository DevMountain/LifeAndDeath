# LifeAndDeath
A simple iOS application that demonstrates MapKit use by showing life events on a Map.

## Follow these steps to integrate MapKit

### Preparation
1. Add the MapKit framework to the project
2. Import MapKit and conform to the MKMapViewDelegate on the MapDetailViewController
3. Change the ```@import CoreLocation``` to ```@import MapKit``` in the Entry.h file
4. Add an enum for LifeEvents to the Person class, we will use this for creating MKAnnotations
5. Update the cellSelectionStyle in the storyboard to Blue and add a segue to the MapDetailViewController
    
### Annotations
1. Add an outlet for the MapView to the MapDetailViewController
2. Set the MapDetailViewController as the delegate for the MapView
3. Add a new PersonAnnotation class with a custom init method ```- (PersonAnnotation *)initWithPerson:(Person *)person lifeEvent:(LifeEvent)event```. You will need a synthesized CLLocationCoordinate2D property called coordinate to conform to the MKAnnotation protocol. In the custom init method, set the coordinate property to the property matching the life event's location's coordinate.
4. Add an updateWithPerson method that will add the annotations for birthPlace and deathPlace to the map, run the method in the view did load with self.person (which will get set by the list view controller)
5. Prepare the MapView with the ```- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation``` method. Use an MKPinAnnotationView, set the pin color, and set canShowCallout to YES.

### Tying Things Together
1. Add an outlet for the TableView on the list view controller
2. Prepare for the segue by setting the Person property and running updateWithPerson on the MapDetailViewController when the user selects a cell (you will need to get the indexPath of the cell to update with the correct person)
