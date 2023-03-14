//
//  MapViewModel.swift
//  
//
//  Created by Kostiantyn Nevinchanyi on 3/14/23.
//

import Foundation
import MapKit

// 5. Conform to `NSObject` in case you want to use delegation methods.
class MapViewModel: NSObject, ObservableObject {
    
    // 6. Created instance for Wrapper
    let mapView = MKMapView()
    
    override init() {
        super.init()
        // 7. Can use delegation here, but pay attention, you have to `override init`
        mapView.delegate = self
        setCenter()
        addAnnotation()
    }
    
    func setCenter() {
        var region = MKCoordinateRegion()
        region.center = CLLocationCoordinate2D(latitude: 40.780735, longitude: -73.966350)
        region.span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        mapView.setRegion(region, animated: true)
    }
    
    func addAnnotation() {
        let annotation = MKPointAnnotation()
        annotation.title = "Central Park"
        annotation.coordinate = CLLocationCoordinate2D(latitude: 40.780735, longitude: -73.966350)
        mapView.addAnnotation(annotation)
    }
}

// 8. ViewModel conforms protocol MKMapViewDelegate
extension MapViewModel: MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, didSelect annotation: MKAnnotation) {
        print(annotation.title, annotation.coordinate)
    }
}
