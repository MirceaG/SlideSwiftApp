//
//  AutoLayoutExtension.swift
//  SwiftApp
//
//  Created by Mircea Grecu on 27/06/2016.
//  Copyright © 2016 Mircea Grecu. All rights reserved.
//

import Foundation
import PureLayout

struct EdgesExtensionStruct: OptionSetType {
    let rawValue: UInt
    
    init(rawValue: UInt) {
        self.rawValue = rawValue
    }
    
    static let Left = EdgesExtensionStruct(rawValue: 0b0001)
    static let Top = EdgesExtensionStruct(rawValue: 0b0010)
    static let Right = EdgesExtensionStruct(rawValue: 0b0100)
    static let Bottom = EdgesExtensionStruct(rawValue: 0b1000)
    static let AllEdges = EdgesExtensionStruct(rawValue: 0b1111)
}

extension UIView {
    
    func pinToSuperviewEdgesStruct(edges: EdgesExtensionStruct, withInset: CGFloat) {
        
        if edges.contains(EdgesExtensionStruct.Left) {
            self.autoPinEdgeToSuperviewEdge(.Left, withInset: withInset)
        }
        
        if edges.contains(EdgesExtensionStruct.Top) {
            self.autoPinEdgeToSuperviewEdge(.Top, withInset: withInset)
        }
        
        if edges.contains(EdgesExtensionStruct.Right) {
            self.autoPinEdgeToSuperviewEdge(.Right, withInset: withInset)
        }
        
        if edges.contains(EdgesExtensionStruct.Bottom) {
            self.autoPinEdgeToSuperviewEdge(.Bottom, withInset: withInset)
        }
        
    }
}