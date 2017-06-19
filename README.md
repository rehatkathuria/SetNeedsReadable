# SetNeedsReadable

A collection of helper methods for `UIView` and calculated variables for `CGFloat` to help enhance readability.

## Installation

Available through CocoaPods. To install, add the following line to your Podfile:

```ruby
pod 'SetNeedsReadable'
```

## Usage
Usage of the centering helper methods should be restricted to `layoutSubviews:`, `viewDidLayoutSubviews:` or animation blocks as appropriate. When used outside of these scenarios, the user is still responsible for marking the appropriate view as dirty with a call to `setNeedsLayout`. To use, simply import the `SetNeedsReadable` module where needed.

#### Centering
---
`foo.centerAlongHorizontalAxis(of: bar)`  
`foo.centerAlongVerticalAxis(of: bar)`  
`foo.centerHorizontally(between: bar, and: baz)`  
`foo.center(inside: bar)`  
`foo.centerVertically(between: bar, and: baz)`  

#### Aligning Inside Another View
---
`foo.alignInside(leftEdgeOf: bar)`  
`foo.alignInside(rightEdgeOf: bar)`  
`foo.alignInside(topEdgeOf: bar)`  
`foo.alignInside(bottomEdgeOf: bar)`  

#### Aligning Outside Another View
---
`foo.alignOutside(leftEdgeOf: bar)`  
`foo.alignOutside(rightEdgeOf: bar)`  
`foo.alignOutside(topEdgeOf: bar)`  
`foo.alignOutside(bottomEdgeOf: bar)`    

#### Animating
---
The methods can also be invoked inside animation blocks.  

```Swift
UIView.animate(withDuration: duration, delay: delay, options: [], animations: { [weak self] in

  guard let weakSelf = self else { return }
  weakSelf.foo.centerHorizontally(between: weakSelf.bar, and: weakSelf.baz)
  weakSelf.foo.centerVertically(between: weakSelf.bar, and: weakSelf.baz)
})
```

There is an example project in the repository that demonstrates usage. 

## Author

rehatkathuria  
[kthr.co/abt](http://kthr.co/abt)

## License

SetNeedsReadable is available under the MIT license. See the LICENSE file for more info.
