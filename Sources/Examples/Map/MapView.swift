//
//  MapView.swift
//  
//
//  Created by Kostiantyn Nevinchanyi on 3/14/23.
//

import SwiftUI

struct MapView: View {
    
    @StateObject var viewModel = MapViewModel()
    
    var body: some View {
        WrapperView(view: viewModel.mapView)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

