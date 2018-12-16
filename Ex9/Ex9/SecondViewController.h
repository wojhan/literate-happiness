//
//  SecondViewController.h
//  Ex9
//
//  Created by Wojciech on 16/12/2018.
//  Copyright © 2018 Wojciech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController <CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *latitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *longtitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *latitudeText;
@property (weak, nonatomic) IBOutlet UILabel *longtitudeText;
@property (weak, nonatomic) IBOutlet UILabel *addressText;
@property (weak, nonatomic) IBOutlet UIButton *currentLocationButton;

//@property (weak, nonatomic) CLLocationManager *locationManager;
//@property (weak, nonatomic) CLGeocoder *geocoder;
//@property (weak, nonatomic) CLPlacemark *placemark;

-(IBAction)getCurrentLocation:(id)sender;

@end

NS_ASSUME_NONNULL_END
