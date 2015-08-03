#include <SpringBoard/SpringBoard.h>
#include <UIKit/UIKit.h>

%hook SBDeviceLockKeypad

+ (UIImage *)keypadImage {
	%orig;
	var image = UIImage(name: "keypadImage")!
	image = image.imageWithRenderingMode(.AlwaysTemplate)
	let imageView = ...
	imageView.tintColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1)
	imageView.image = image
}

%end

