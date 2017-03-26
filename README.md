# TKImageView
An easy way to crop an image.  
## Features
* Both iPhone/iPad available
* Support pinch gesture to zoom
* Support pan gesture to move&resize
* Support cutomize line width and color 
* Support cross line and middle line

## System requirements
* iOS 7.0 or higher

## Samples
![](http://7xlm3m.com1.z0.glb.clouddn.com/sample_1.gif)
![](http://7xlm3m.com1.z0.glb.clouddn.com/sample_2.gif)
![](http://7xlm3m.com1.z0.glb.clouddn.com/sample_3.gif)
![](http://7xlm3m.com1.z0.glb.clouddn.com/sample_4.gif)
![](http://7xlm3m.com1.z0.glb.clouddn.com/sample_5.gif)
![](http://7xlm3m.com1.z0.glb.clouddn.com/sample_6.gif)
## Properties
name  | type | description
------------- | ------------- | -------------
toCropImage  | UIImage  | 待裁剪的图片。<br>The image you want to crop.
needScaleCrop  | BOOL  | 是否需要缩放裁剪。<br>Determines whether you need to scale crop with pinch gesture or not.
showMidLines  | BOOL  | 是否需要显示每条边中间的线，这条中间线支持拖动手势。<br>Show the lines in the middle of each border, which can receive pan gesture to resize the crop area when the aspect ratio is ZERO.
showCrossLines  | BOOL  | 是否显示裁剪框内的交叉线。<br>Show the cross lines in the crop area. 
cropAspectRatio  | CGFloat  | 设置裁剪框的宽高比。<br>The aspect retio you want to crop the image, equals to WIDTH / HEIGHT.
cropAreaBorderLineColor  | UIColor  | 设置裁剪边框的颜色。<br>The color of border lines.  
cropAreaBorderLineWidth  | CGFloat  | 设置裁剪边框的线宽。<br>The width of border lines.  
cropAreaCornerLineColor  | UIColor  | 设置裁剪边框四个角的颜色。<br>The line color of the corner.
cropAreaCornerLineWidth  | CGFloat  | 设置裁剪边框四个角的线宽。<br>The line width of the corner.  
cropAreaCornerWidth  | CGFloat  | 设置裁剪边框四个角的宽度，这里指角的横边的长度。<br>The width of the corner area, indicate the length of the horizontal line of the corner.  
cropAreaCornerHeight  | CGFloat  | 设置裁剪边框四个角的高度，这里指角的竖边的长度。<br>The height of the corner area, indicate the length of the vertical line of the corner.  
minspace  | CGFloat  | 相邻角之间的最小距离。<br>The minimum distance between the corners.  
cropAreaCrossLineWidth  | CGFloat  | 裁剪框内交叉线的宽度。<br>The width of cross lines.
cropAreaCrossLineColor  | UIColor  | 裁剪框内交叉线的颜色。<br>The color of cross lines.
cropAreaMidLineWidth  | CGFloat  | 裁剪边框每条边中间线的长度。<br>The width of middle lines.
cropAreaMidLineHeight  | CGFloat  | 裁剪边框每条边中间线的线宽。<br> The height of middle lines.
cropAreaMidLineColor  | UIColor  | 裁剪边框每条边中间线的颜色。<br>The color of middle lines.
maskColor  | UIColor  | 裁剪区域的蒙板颜色。<br>The color of the mask view which is always transparent black.
cornerBorderInImage  | BOOL  | 裁剪边框的四个角是否可以超出图片显示。<br>Whether the corner border inside the image or not.

## Usage
TKImageView supports both **initWithFrame** and **initWithCoder** to initialize.You can customize your TKImageView instance with the properties to match your design.

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
