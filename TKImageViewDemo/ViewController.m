//
//  ViewController.m
//  ImageCropDemo
//
//  Created by yinyu on 15/11/10.
//  Copyright © 2015年 yinyu. All rights reserved.
//

#import "ViewController.h"
#import "CropImageViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    
}
- (void)cropImage: (UIImage *)image {
    
    CropImageViewController *cropImageViewController = [[CropImageViewController alloc]initWithNibName:@"CropImageViewController" bundle:nil];
    cropImageViewController.image = image;
    [self.navigationController pushViewController: cropImageViewController animated: YES];
    
}
#pragma mark - UIImagePickerDelegate
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    
    UIImage *toCropImage = info[UIImagePickerControllerOriginalImage];
    [self cropImage: toCropImage];
    [picker dismissViewControllerAnimated: YES completion: NULL];
    
}
#pragma mark - IBAction
- (IBAction)clickImageCropBtn:(id)sender {
    
    UIImage *toCropImage = [UIImage imageNamed: @"test"];
    [self cropImage: toCropImage];
    
}
- (IBAction)clickCameraCropBtn:(id)sender {

    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    UIImagePickerControllerSourceType sourceType = UIImagePickerControllerSourceTypeCamera;
    imagePicker.sourceType = sourceType;
    imagePicker.delegate = self;
    [self presentViewController: imagePicker animated:YES completion: NULL];
}
- (IBAction)clickAlbumCropBtn:(id)sender {

    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    UIImagePickerControllerSourceType sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.sourceType = sourceType;
    imagePicker.delegate = self;
    [self presentViewController: imagePicker animated:YES completion: NULL];
    
}
@end
