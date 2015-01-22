//
//  ViewController.m
//  Capture
//
//  Created by User on 1/20/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

#import "ViewController.h"
#import "FilterViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>

@interface ViewController () <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (nonatomic) UIImagePickerController * cameraPickerController;

@property (nonatomic) UIImagePickerController * libraryPickerController;

@property (weak, nonatomic) IBOutlet UIButton *openPhotoLibraryButton;
@property (weak, nonatomic) IBOutlet UIButton *takeMedia;

@property (weak, nonatomic) IBOutlet UIView *cameraView;


@property (weak, nonatomic) IBOutlet UISegmentedControl *mediaChoiceButton;

@property (weak, nonatomic) IBOutlet UISegmentedControl *cameraChoiceButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.pickerController = [[UIImagePickerController alloc] init];
//    self.pickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
//    
//    [self.view addSubview:self.pickerController.view];
    
    
    [self.openPhotoLibraryButton addTarget:self action:@selector(openPhotoLibrary) forControlEvents:UIControlEventTouchUpInside];

    self.cameraPickerController = [[UIImagePickerController alloc] init];
    self.cameraPickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
    self.cameraPickerController.cameraDevice = UIImagePickerControllerCameraDeviceFront;
    self.cameraPickerController.showsCameraControls = NO;
    self.cameraPickerController.delegate = self;
    
    self.cameraPickerController.mediaTypes = @[(NSString *)kUTTypeImage,(NSString *)kUTTypeMovie];
    
    self.cameraPickerController.view.frame = self.cameraView.bounds;
    
    [self.cameraView addSubview:self.cameraPickerController.view];
    
    [self.takeMedia addTarget:self.cameraPickerController action:@selector(takePicture) forControlEvents:UIControlEventTouchUpInside];
    
    [self.mediaChoiceButton addTarget:self action:@selector(changeMediaType) forControlEvents:UIControlEventValueChanged];
    
    [self.cameraChoiceButton addTarget:self action:@selector(changeCameraType) forControlEvents:UIControlEventValueChanged];
    
    }
    
    

- (void)changeMediaType {
    
    self.cameraPickerController.cameraCaptureMode = (self.mediaChoiceButton.selectedSegmentIndex ==0) ? UIImagePickerControllerCameraCaptureModePhoto : UIImagePickerControllerCameraCaptureModeVideo;
    
    
    switch (self.mediaChoiceButton.selectedSegmentIndex) {
        case 0://photo
            
            
            [self.mediaChoiceButton addTarget:self action:@selector(changeMediaType) forControlEvents:UIControlEventValueChanged];
            
            break;
        case 1: //video
            
            [self.mediaChoiceButton removeTarget:self action:@selector(changeMediaType) forControlEvents:UIControlEventValueChanged];
            
            
            break;
        default:
            break;
    }
    
}

- (void)changeCameraType {
        
        self.cameraPickerController.cameraDevice = (self.cameraChoiceButton.selectedSegmentIndex == 0) ? UIImagePickerControllerCameraDeviceFront : UIImagePickerControllerCameraDeviceRear;
        
        
//        switch (self.cameraChoiceButton.selectedSegmentIndex) {
//            case 0://front camera
//                
//                
//                [self.cameraChoiceButton addTarget:self action:@selector(changeCameraType) forControlEvents:UIControlEventValueChanged];
//                
//                break;
//            case 1: //rear camera
//                
//                [self.cameraChoiceButton removeTarget:self action:@selector(changeCameraType) forControlEvents:UIControlEventValueChanged];
//                
//                
//                break;
//            default:
//                break;
//                
//        }
//    


}

- (void) openPhotoLibrary {
    
    self.libraryPickerController = [[UIImagePickerController alloc] init];
    self.libraryPickerController.delegate = self;
    
    
    [self presentViewController:self.libraryPickerController animated:YES completion:nil];
}

- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    
    NSLog(@"%@",info);
    
    UIImage * image = info[UIImagePickerControllerOriginalImage];
    
     [self gotoFilterWithImage:image];
    
    
    [picker dismissViewControllerAnimated:YES completion:^{
        
      
        
    }];
    
}

- (void)gotoFilterWithImage:(UIImage *)image {
    
    //push filter view controller
    
    FilterViewController * filterVC  = [self.storyboard instantiateViewControllerWithIdentifier:@"filterVC"];
    
    filterVC.originalImage = image;
    [self.navigationController pushViewController:filterVC animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
