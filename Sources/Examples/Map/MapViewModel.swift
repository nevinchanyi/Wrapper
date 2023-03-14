//
//  MapViewModel.swift
//  
//
//  Created by Kostiantyn Nevinchanyi on 3/14/23.
//

import Foundation
import MapKit

class MapViewModel: NSObject, ObservableObject {
    
    let mapView: MKMapView
    
    init(mapView: MKMapView = MKMapView()) {
        self.mapView = mapView
    }
}
