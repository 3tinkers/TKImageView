# TKImageView
An easy way to crop an image.  
##Features
* Both iPhone/iPad available
* Support pinch gesture to zoom
* Support pan gesture to move&resize
* Support cutomize line width and color 
* Support cross line and middle line

##System requirements
* iOS 7.0 or higher

##Samples
![](https://github.com/3tinkers/TKImageView/blob/master/TKImageViewDemo/resources/sample0.gif)
![](https://github.com/3tinkers/TKImageView/blob/master/TKImageViewDemo/resources/sample1.gif)
##Properties
name  | type | description
------------- | ------------- | -------------
toCropImage  | UIImage  | the image you want to crop.
needScaleCrop  | BOOL  | determines whether you need to scale crop with pinch gesture or not.
showMidLines  | BOOL  | thow the lines in the middle of each border, which can receive pan gesture to resize the crop area when the aspect ratio is ZERO.
showCrossLines  | BOOL  | show the cross lines in the crop area. 
cropAspectRatio  | CGFloat  | The aspect retio you want to crop the image, equals to WIDTH / HEIGHT.
cropAreaBorderLineColor  | UIColor  | the color of border lines.  
cropAreaBorderLineWidth  | CGFloat  | the width of border lines.  
cropAreaCornerLineColor  | UIColor  | the line color of the corner.
cropAreaCornerLineWidth  | CGFloat  | the width of the corner area, not the line width in corner.  
cropAreaCornerWidth  | CGFloat  | the line width of the corner. 
cropAreaCornerHeight  | CGFloat  | the height of the corner area.  
minspace  | CGFloat  | the minimum distance between the corners of one border.  
cropAreaCrossLineWidth  | CGFloat  | the width of cross lines.
cropAreaCrossLineColor  | UIColor  | the color of cross lines.
cropAreaMidLineWidth  | CGFloat  | the width of middle lines.
cropAreaMidLineHeight  | CGFloat  | the height of middle lines.
cropAreaMidLineColor  | UIColor  | the color of middle lines.
maskColor  | UIColor  | the color of the mask view which is always transparent black.

## Function
You can get the cropped image by this function.

	- (UIImage *)currentCroppedImage;
## Bug&Feature Report

If you find any bugs in my code or you think it is useful to add some features in this tool, please write a issue or mail to me <yinyu@tinkers.com.cn>, thanks a lot!
