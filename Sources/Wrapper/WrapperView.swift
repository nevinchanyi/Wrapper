//
//  WrapperView.swift
//  
//
//  Created by Kostiantyn Nevinchanyi on 3/14/23.
//

import SwiftUI

public struct WrapperView<V: UIView>: UIViewRepresentable {
    public typealias UIViewType = V
    
    public var view: V
    public var onUpdate: ((V) -> Void)?
    
    public init(view: V, onUpdate: ((V) -> Void)? = nil) {
        self.view = view
        self.onUpdate = onUpdate
    }
    
    public func makeUIView(context: Context) -> V {
        return view
    }
    
    public func updateUIView(_ uiView: V, context: Context) {
        onUpdate?(uiView)
    }
}
