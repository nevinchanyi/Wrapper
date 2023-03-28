//
//  MapView.swift
//  
//
//  Created by Kostiantyn Nevinchanyi on 3/14/23.
//

import SwiftUI

struct MapView: View {
    
    // 2. Define a view-model, which contains an instance of UIView
    @StateObject var viewModel = MapViewModel()
    
    var body: some View {
        
        // 3. Pass the instance to the `WrapperView`
        WrapperView(view: viewModel.mapView)
        
        // 4. Set some custom view attributes
            .ignoresSafeArea()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
