# Wrapper

Wrap a custom UIView for SwiftUI.


## Installation

### Swift Package Manager

https - `https://github.com/nevinchanyi/Wrapper.git`
OR
ssh - `git@github.com:nevinchanyi/Wrapper.git`


## Usage

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

## Available examples
### MKMapView
// TODO: Add link
### WKWebView
// TODO: Add link
