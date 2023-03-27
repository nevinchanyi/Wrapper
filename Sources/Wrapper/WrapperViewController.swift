//
//  WrapperViewController.swift
//  
//
//  Created by Kostiantyn Nevinchanyi on 3/26/23.
//

import SwiftUI


public struct WrapperViewController<V: UIViewController>: UIViewControllerRepresentable {
    public typealias UIViewType = V
    
    public var viewController: V
    
    public init(viewController: V) {
        self.viewController = viewController
    }
    
    public func makeUIViewController(context: Context) -> V {
        return viewController
    }
    
    public func updateUIViewController(_ uiView: V, context: Context) {}
}
