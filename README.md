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
cornerBorderInImage  | BOOL  | whether the corner border inside the image or not.
![](https://github.com/3tinkers/TKImageView/blob/master/TKImageViewDemo/resources/property.png) 
cornerBorderInImage = YES
![](https://github.com/3tinkers/TKImageView/blob/master/TKImageViewDemo/resources/cornerBorderInImage.png)
cornerBorderInImage = NO
![](https://github.com/3tinkers/TKImageView/blob/master/TKImageViewDemo/resources/cornerBorderOutOfImage.png)
## Usage
TKImageView support both **initWithFrame** and **initWithCoder** to initialize.
The properties should be set or keep default after the initialize.Once one property has been set, you should not change it any more. 

	@property (weak, nonatomic) IBOutlet TKImageView *tkImageView;
	- (void)viewDidLoad {   
    	_tkImageView.toCropImage = [UIImage imageNamed: @"test.jpg"];
    	_tkImageView.showMidLines = YES;
    	_tkImageView.needScaleCrop = YES;
    	_tkImageView.showCrossLines = YES;
    	_tkImageView.cornerBorderInImage = NO;
    	_tkImageView.cropAreaCornerWidth = 44;
    	_tkImageView.cropAreaCornerHeight = 44;
    	_tkImageView.minSpace = 30;
    	_tkImageView.cropAreaCornerLineColor = [UIColor whiteColor];
    	_tkImageView.cropAreaBorderLineColor = [UIColor whiteColor];
    	_tkImageView.cropAreaCornerLineWidth = 8;
    	_tkImageView.cropAreaBorderLineWidth = 6;
    	_tkImageView.cropAreaMidLineWidth = 30;
    	_tkImageView.cropAreaMidLineHeight = 8;
    	_tkImageView.cropAreaMidLineColor = [UIColor whiteColor];
    	_tkImageView.cropAreaCrossLineColor = [UIColor whiteColor];
    	_tkImageView.cropAreaCrossLineWidth = 6;    
	}
## Function
You can get the cropped image by this function.

	- (UIImage *)currentCroppedImage;
## Bug&Feature Report

If you find any bugs in my code or you think it is useful to add some features in this tool, please write a issue or mail to me <yinyu@tinkers.com.cn>, thanks a lot!
