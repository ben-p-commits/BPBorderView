# BPBorderView

[![CI Status](http://img.shields.io/travis/Ben Palmer/BPBorderView.svg?style=flat)](https://travis-ci.org/Ben Palmer/BPBorderView)
[![Version](https://img.shields.io/cocoapods/v/BPBorderView.svg?style=flat)](http://cocoapods.org/pods/BPBorderView)
[![License](https://img.shields.io/cocoapods/l/BPBorderView.svg?style=flat)](http://cocoapods.org/pods/BPBorderView)
[![Platform](https://img.shields.io/cocoapods/p/BPBorderView.svg?style=flat)](http://cocoapods.org/pods/BPBorderView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

BPBorderView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "BPBorderView"
```

## Usage

Import the pod wherever you may need the BPBorderView Subclass
```objective-c
#import <BPBorderView/BPBorderView.h>
```

Initialize a view with one of the two initializers
```objective-c

//use the simple initializer, defaults to 1px 
BPBorderView *view = [[BPBorderView alloc] 
	initWithFrame:someRect 
	borderOrientationFlags:BPBorderViewOrientationRight];

//or set the color and border width as well
BPBorderView *view = [[BPBorderView alloc] 
	initWithFrame:someRect 
	borderOrientationFlags:BPBorderViewOrientationBottom 
	borderColor:[UIColor redColor] 
	borderWidth:1.0];

//use the bitwise OR to pile on more orientation options
BPBorderView *view2 = [[BPBorderView alloc] 
	initWithFrame:someRect 
	borderOrientationFlags:BPBorderViewOrientationRight
 		| BPBorderViewOrientationLeft
 		| BPBorderViewOrientationBottom
 		| BPBorderViewOrientationTop];
```

Put borders on all the things!

## Author

Ben Palmer, benj.c.palmer@gmail.com

## License

BPBorderView is available under the MIT license. See the LICENSE file for more info.