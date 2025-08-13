# Wrapper

Wrap a custom UIView or UIViewController in SwiftUI.


## Installation

### Swift Package Manager
`https://github.com/nevinchanyi/Wrapper.git`



## Usage

View.
```
import SwiftUI

// 1. import the package
import Wrapper

struct MapView: View {
    
    // 2. Define a view-model, which contains an instance of UIView and 
    @StateObject var viewModel = MapViewModel()
    
    var body: some View {
    
    // 3. Pass the instance to the `WrapperView`
        WrapperView(view: viewModel.mapView)
        
        // 4. Set some custom view attributes
            .frame(width: 100, height: 100)
    }
}
```

View-Model with delegate.
```
import MapKit

// 5. Conform to `NSObject` in case you want to use delegation methods.
class ContentViewModel: NSObject, ObservableObject {
    
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
extension ContentViewModel: MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, didSelect annotation: MKAnnotation) {
        print(annotation.title, annotation.coordinate)
    }
}
```

## Available examples
`MKMapView`, `WKWebView`, `UITextView`, `UICalendarView`
