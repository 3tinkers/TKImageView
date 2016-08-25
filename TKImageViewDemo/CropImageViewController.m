//
//  CropImageViewController.m
//  ImageTailor
//
//  Created by yinyu on 15/10/10.
//  Copyright © 2015年 yinyu. All rights reserved.
//

#import "CropImageViewController.h"
#import "TKImageView.h"

#define SCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height
#define CROP_PROPORTION_IMAGE_WIDTH 30.0f
#define CROP_PROPORTION_IMAGE_SPACE 48.0f
#define CROP_PROPORTION_IMAGE_PADDING 20.0f

@interface CropImageViewController () {
    
    NSArray *proportionImageNameArr;
    NSArray *proportionImageNameHLArr;
    NSArray *proportionArr;
    NSMutableArray *proportionBtnArr;
    CGFloat currentProportion;

}
@property (weak, nonatomic) IBOutlet UIScrollView *cropProportionScrollView;
@property (weak, nonatomic) IBOutlet TKImageView *tkImageView;

@end

@implementation CropImageViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self setUpTKImageView];
    currentProportion = 0;
    [self setUpCropProportionView];
    [self clickProportionBtn: proportionBtnArr[0]];
    _tkImageView.scaleFactor = 0.6;
    
}
- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
}
- (void)setUpTKImageView {
    
    _tkImageView.toCropImage = [UIImage imageNamed: @"test.jpg"];
    _tkImageView.showMidLines = YES;
    _tkImageView.needScaleCrop = YES;
    _tkImageView.showCrossLines = YES;
    _tkImageView.cornerBorderInImage = NO;
    _tkImageView.cropAreaCornerWidth = 44;
    _tkImageView.cropAreaCornerHeight = 44;
    _tkImageView.minSpace = 30;
    _tkImageView.cropAreaCornerLineColor = [UIColor lightGrayColor];
    _tkImageView.cropAreaBorderLineColor = [UIColor grayColor];
    _tkImageView.cropAreaCornerLineWidth = 8;
    _tkImageView.cropAreaBorderLineWidth = 6;
    _tkImageView.cropAreaMidLineWidth = 30;
    _tkImageView.cropAreaMidLineHeight = 8;
    _tkImageView.cropAreaMidLineColor = [UIColor grayColor];
    _tkImageView.cropAreaCrossLineColor = [UIColor lightGrayColor];
    _tkImageView.cropAreaCrossLineWidth = 6;
    
}
- (void)setUpCropProportionView {
    
    proportionBtnArr = [NSMutableArray array];
    proportionImageNameArr = @[@"crop_free", @"crop_1_1", @"crop_4_3", @"crop_3_4", @"crop_16_9", @"crop_9_16"];
    proportionImageNameHLArr = @[@"cropHL_free", @"cropHL_1_1", @"cropHL_4_3", @"cropHL_3_4", @"cropHL_16_9", @"cropHL_9_16"];
    proportionArr = @[@0, @1, @(4.0/3.0), @(3.0/4.0), @(16.0/9.0), @(9.0/16.0)];
    self.cropProportionScrollView.contentSize = CGSizeMake( CROP_PROPORTION_IMAGE_PADDING * 2 + CROP_PROPORTION_IMAGE_WIDTH * proportionArr.count + CROP_PROPORTION_IMAGE_SPACE * (proportionArr.count - 1), CROP_PROPORTION_IMAGE_WIDTH);
    for(int i = 0; i < proportionArr.count; i++) {
        UIButton *proportionBtn = [[UIButton alloc]initWithFrame: CGRectMake(CROP_PROPORTION_IMAGE_PADDING + (CROP_PROPORTION_IMAGE_SPACE + CROP_PROPORTION_IMAGE_WIDTH) * i, 0, CROP_PROPORTION_IMAGE_WIDTH, CROP_PROPORTION_IMAGE_WIDTH)];
        [proportionBtn setBackgroundImage:
         [UIImage imageNamed: proportionImageNameArr[i]]
                                 forState: UIControlStateNormal];
        [proportionBtn setBackgroundImage:
         [UIImage imageNamed: proportionImageNameHLArr[i]]
                                 forState: UIControlStateSelected];
        [proportionBtn addTarget:self action:@selector(clickProportionBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self.cropProportionScrollView addSubview:proportionBtn];
        [proportionBtnArr addObject:proportionBtn];
    }
    
}
- (void)clickProportionBtn: (UIButton *)proportionBtn {
    
    for(UIButton *btn in proportionBtnArr) {
        btn.selected = NO;
    }
    proportionBtn.selected = YES;
    NSInteger index = [proportionBtnArr indexOfObject:proportionBtn];
    currentProportion = [proportionArr[index] floatValue];
    _tkImageView.cropAspectRatio = currentProportion;
    
}
#pragma mark - IBActions
- (IBAction)clickCancelBtn:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}
- (IBAction)clickOkBtn:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:^{
        [[NSNotificationCenter defaultCenter] postNotificationName:@"CropOK" object: [_tkImageView currentCroppedImage]];
    }];
    
}
@end
