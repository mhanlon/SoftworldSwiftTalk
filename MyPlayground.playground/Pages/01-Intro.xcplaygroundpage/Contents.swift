//: A MapKit based Playground
import MapKit
import PlaygroundSupport


let infiniteLoopCoordinates = CLLocationCoordinate2DMake(37.331687, -122.030034)
let theCodeHubCoordinates = CLLocationCoordinate2DMake(53.284687, -6.117023)

// Now let's create a MKMapView
let mapView = MKMapView(frame: CGRect(x:0, y:0, width:800, height:800))

// Define a region for our map view
var mapRegion = MKCoordinateRegion()

let mapRegionSpan = 0.02
mapRegion.center = theCodeHubCoordinates
mapRegion.span.latitudeDelta = mapRegionSpan
mapRegion.span.longitudeDelta = mapRegionSpan

mapView.setRegion(mapRegion, animated: true)

// Create a map annotation
let annotation = MKPointAnnotation()
annotation.coordinate = theCodeHubCoordinates
annotation.title = "The Code Hub"
annotation.subtitle = "Sandycove, Co. Dublin."

mapView.addAnnotation(annotation)

// Add the created mapView to our Playground Live View
PlaygroundPage.current.liveView = mapView

//: [A little about Swift](@next)
