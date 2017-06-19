//
//
//  Rehat Kathuria 
//  http://kthr.co
//
//
//  Copyright 2017, Rehat Kathuria
//
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy 
//  of this software and associated documentation files (the "Software"), to deal 
//  in the Software without restriction, including without limitation the rights 
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
//  copies of the Software, and to permit persons to whom the Software is furnished 
//  to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all 
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
//  INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
//  PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF 
//  CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE 
//  OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//
//

import UIKit

// MARK: - CGFloat

public extension CGFloat {

    var oneTenth: CGFloat { return self * 0.10 }
    
    var twoTenths: CGFloat { return self * 0.20 }
    
    var quarter: CGFloat { return self * 0.25 }
    
    var threeTenths: CGFloat { return self * 0.30 }
    
    var fourTenths: CGFloat { return self * 0.40 }
    
    var half: CGFloat { return self * 0.5 }
    
    var sixTenths: CGFloat { return self * 0.60 }
    
    var sevenTenths: CGFloat { return self * 0.70 }
    
    var threeQuarters: CGFloat { return self * 0.75 }
    
    var eightTenths: CGFloat { return self * 0.80 }
    
    var nineTenths: CGFloat { return self * 0.90 }
    
    var double: CGFloat { return self * 2.0 }
    
}

// MARK: - UIView

public extension UIView {
    
    // MARK: - Centering
    
    
    /**
        Aligns the caller so that it's horizontally centered with the view passed
        inside the first argument.
     
        - Parameter view: The view to center the caller horizontally against.
        - Parameter padding: The amount of padding to add to the caller, horizontally.
     **/
    final func centerAlongHorizontalAxis(of view: UIView, padding: CGFloat = 0.0) {
        
        if view == superview {
            
            center = CGPoint(x: view.bounds.width.half + padding, y: center.y)
        }
        else {
            
            center = CGPoint(x: view.frame.midX + padding, y: center.y)
        }
    }
    
    
    /**
        Aligns the caller so that it's vertically centered with the view passed
        inside the first argument.
     
        - Parameter view: The view to center the caller vertically against.
        - Parameter padding: The amount of padding to add to the caller, vertically.
     **/
    final func centerAlongVerticalAxis(of view: UIView, padding: CGFloat = 0.0) {
        
        if view == superview {
            
            center = CGPoint(x: center.x, y: view.bounds.height.half + padding)
        }
        else {
            
            center = CGPoint(x: center.x, y: view.frame.midY + padding)
        }
    }
    
    
    /**
        Centers the caller horizontally between the two provided views.
     
        - Parameter firstView: The first view to center the caller between.
        - Parameter secondView: The second view to center the caller between.
        - Parameter padding: The amount of padding to apply to the caller, horizontally.
     
        - Note: The order of the views passed into the method do not matter. 
                The `firstView` or `secondView` shouldn't be the caller's `superview`
     **/
    final func centerHorizontally(between firstView: UIView, and secondView: UIView, padding: CGFloat = 0.0) {
        
        assert(firstView != superview, "firstView cannot be the caller's superview.")
        assert(secondView != superview, "secondView cannot be the caller's superview.")
        assert(firstView != secondView, "firstView cannot also be the secondView.")
        
        if firstView.frame.minX > secondView.frame.minX {
            
            center = CGPoint(x: firstView.frame.minX - (firstView.frame.minX - secondView.frame.maxX).half + padding, y: center.y)
        }
        else {
            
            center = CGPoint(x: secondView.frame.minX - (secondView.frame.minX - firstView.frame.maxX).half + padding, y: center.y)
        }
    }
    
    
    /**
        Centers the caller inside of the view passed in the first parameter.
     
        - Parameter view: The view to center self inside of.
     **/
    final func centerInside(view: UIView) {
        
        if view == superview {
            
            center = CGPoint(x: view.bounds.width.half, y: view.bounds.height.half)
        }
        else {
            
            center = CGPoint(x: view.frame.midX, y: view.frame.midY)
        }
    }
    
    
    /**
        Centers the caller vertically between the two provided views.
     
        - Parameter firstView: The first view to center the caller between.
        - Parameter secondView: The second view to center the caller between.
        - Parameter padding: The amount of padding to apply to the caller, vertically.
     
        - Note: The order of the views passed into the method do not matter. 
                The `firstView` or `secondView` shouldn't be the caller's `superview`.
     
     **/
    final func centerVertically(between firstView: UIView, and secondView: UIView, padding: CGFloat = 0.0) {
        
        assert(firstView != superview, "firstView cannot be the caller's superview.")
        assert(secondView != superview, "secondView cannot be the caller's superview.")
        assert(firstView != secondView, "firstView cannot also be the secondView.")
        
        if firstView.frame.minY > secondView.frame.minY {
            
            center = CGPoint(x: center.x, y: firstView.frame.minY - (firstView.frame.minY - secondView.frame.maxY).half + padding)
        }
        else {
            
            center = CGPoint(x: center.x, y: secondView.frame.minY - (secondView.frame.minY - firstView.frame.maxY).half + padding)
        }
    }
    
    
    // MARK: - Inside Alignment
    
    /**
        Aligns the caller so that it's aligned to rest against the left edge of the view
        passed in the first argument
     
        - Parameter view: The view to align the caller against.
        - Parameter padding: The amount of padding to add to the 
                    caller. 
     
        - Note: Positive padding moves the caller to
                the right, whereas negative padding moves it
                to the left
     **/
    final func alignInside(leftEdgeOf view: UIView, padding: CGFloat = 0.0) {
        
        if view == superview {
            
            center = CGPoint(x: bounds.width.half + padding, y: center.y)
        }
        else {
            
            center = CGPoint(x: view.frame.minX + bounds.width.half + padding, y: center.y)
        }
    }
    
    
    /**
        Aligns the caller so that it rests against the right edge of the view
        passed in the first argument.
     
        - Parameter view: The view to align the caller against.
        - Parameter padding: The amount of padding to add to the 
                    caller. 
     
        - Note: Positive padding moves the caller to
                the left, whereas negative padding moves it
                to the right.
     **/
    final func alignInside(rightEdgeOf view: UIView, padding: CGFloat = 0.0) {
        
        if view == superview {
            
            center = CGPoint(x: (view.bounds.width - bounds.width.half) - padding, y: center.y)
        }
        else {
            
            center = CGPoint(x: (view.frame.maxX - bounds.width.half) - padding, y: center.y)
        }
    }
    
    
    /**
        Aligns the caller so that it rests against the top edge of the view
        passed in the first argument.
     
        - Parameter view: The view to align the caller against.
        - Parameter padding: The amount of padding to add to the
                    caller. 
     
        - Note: Positive padding moves the caller lower
                down on the screen, whereas negative padding
                moves it higher up.
     **/
    final func alignInside(topEdgeOf view: UIView, padding: CGFloat = 0.0) {
        
        if view == superview {
            
            center = CGPoint(x: center.x, y: bounds.height.half + padding)
        }
        else {
            
            center = CGPoint(x: center.x, y: (view.frame.minY + bounds.height.half) + padding)
        }
    }
    
    
    /**
        Aligns the caller so that it rests against the bottom edge of the view
        passed in the first argument.
     
        - Parameter view: The view to align the caller against.
        - Parameter padding: The amount of padding to add to the 
                    caller. 
     
        - Note: Positive padding moves the caller higher
                up on the screen, whereas negative padding
                moves it lower down.
     **/
    final func alignInside(bottomEdgeOf view: UIView, padding: CGFloat = 0.0) {
        
        if view == superview {
            
            center = CGPoint(x: center.x, y: (view.bounds.height - bounds.height.half) - padding)
        }
        else {
            
            center = CGPoint(x: center.x, y: (view.frame.maxY - bounds.height.half) - padding)
        }
    }
    
    
    // MARK: - Outside Alignment
    
    
    /**
        Aligns the caller so that it's right edge rests against the left edge of the
        view passed in the first argument.
     
        - Parameter view: The view to align the caller against.
        - Parameter padding: The amount of padding to add to the
                    caller. 
     
        - Note: Positive padding moves the caller to
                the left, whereas negative padding moves
                it to the right.
     **/
    final func alignOutside(leftEdgeOf view: UIView, padding: CGFloat = 0.0) {
        
        if view == superview {
            
            center = CGPoint(x: -(bounds.width.half + padding), y: center.y)
        }
        else {
            
            center = CGPoint(x: view.frame.minX - (bounds.width.half + padding), y: center.y)
        }
    }
    
    
    /**
        Aligns the caller so that it's left edge rests against the right edge of the
        view passed in the first argument.
     
        - Parameter view: The view to align the caller against.
        - Parameter padding: The amount of padding to add to the
                    caller. 
     
        - Note: Positive padding moves the caller to
                the right, whereas negative padding moves
                it to the left.
     **/
    final func alignOutside(rightEdgeOf view: UIView, padding: CGFloat = 0.0) {
        
        if view == superview {
            
            center = CGPoint(x: view.bounds.width + bounds.width.half + padding, y: center.y)
        }
        else {
            
            center = CGPoint(x: view.frame.maxX + bounds.width.half + padding, y: center.y)
        }
    }
    
    
    /**
        Aligns the caller so that it's bottom edge rests against the top edge of the
        view passed in the first argument.
     
        - Parameter view: The view to align the caller against.
        - Parameter padding: The amount of padding to add to the
                    caller.
     
        - Note: Positive padding moves the caller higher
                up the screen, whereas negative padding moves
                it lower down.
     **/
    final func alignOutside(topEdgeOf view: UIView, padding: CGFloat = 0.0) {
        
        if view == superview {
            
            center = CGPoint(x: center.x, y: -(bounds.height.half + padding))
        }
        else {
            
            center = CGPoint(x: center.x, y: view.frame.minY - (bounds.height.half + padding))
        }
    }
    

    /**
        Aligns the caller so that it's top edge rests against the bottom edge of the
        view passed in the first argument.
     
        - Parameter view: The view to align the caller against.
        - Parameter padding: The amount of padding to add to the
                    caller. 
     
        - Note: Positive padding moves the caller lower
                down on the screen, whereas negative padding
                moves it higher up.
     **/
    final func alignOutside(bottomEdgeOf view: UIView, padding: CGFloat = 0.0) {
        
        if view == superview {
            
            center = CGPoint(x: center.x, y: view.bounds.height + bounds.height.half + padding)
        }
        else {
            
            center = CGPoint(x: center.x, y: view.frame.maxY + bounds.height.half + padding)
        }
    }
    
}
