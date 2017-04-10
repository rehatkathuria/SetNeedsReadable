//
//  View.swift
//  Example Project
//
//  Created by Rehat Kathuria on 06/04/2017.
//  Copyright © 2017 Rehat Kathuria. All rights reserved.
//

import UIKit

final class View: UIView {

    // MARK: - Properties
    
    private let blueSquare: UIView = {
        
        let foo = UIView(frame: .zero)
        foo.backgroundColor = .blue
        return foo
    }()
    private let redSquare: UIView = {
        
        let foo = UIView(frame: .zero)
        foo.backgroundColor = .red
        return foo
    }()
    private let purpleSquare: UIView = {
        
        let foo = UIView(frame: .zero)
        foo.backgroundColor = .purple
        return foo
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError() }
    
    private func setup() {
    
        addSubview(blueSquare)
        addSubview(purpleSquare)
        addSubview(redSquare)
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        blueSquare.frame = CGRect(x: 0.0, y: 0.0, width: bounds.width.quarter, height: bounds.width.quarter)
        purpleSquare.frame = blueSquare.bounds
        redSquare.frame = CGRect(x: 0.0, y: 0.0, width: blueSquare.bounds.width.half, height: blueSquare.bounds.height.half)
        
        /**
         
         There are two examples below of different layouts.
         Remove the comment markers to see their effects!
         
         **/
        
        /** 1.
         
        blueSquare.centerInside(view: self)
         
        purpleSquare.alignInside(rightEdgeOf: self)
        purpleSquare.centerAlongVerticalAxis(of: self)
         
        redSquare.centerHorizontally(between: blueSquare, and: purpleSquare)
        redSquare.centerVertically(between: blueSquare, and: purpleSquare)
         
        **/
        
        
        /** 2.
        
         blueSquare.centerInside(view: self)
         
         purpleSquare.alignInside(rightEdgeOf: self)
         purpleSquare.centerAlongVerticalAxis(of: self)
        
         redSquare.alignOutside(rightEdgeOf: blueSquare)
         redSquare.alignOutside(topEdgeOf: blueSquare)
         
         **/
    }
    
}
