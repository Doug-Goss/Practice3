//
//  SpirographViewController.h
//  Spirograph
//
//  Created by Michael Toth on 2/20/14.
//  Copyright (c) 2014 Michael Toth. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpirographView.h"
#import "HarmonigraphView.h"


@interface SpirographViewController : UIViewController 


@property (weak, nonatomic) IBOutlet SpirographView *spirographView;
@property (weak, nonatomic) IBOutlet HarmonigraphView *HarmonigraphView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UISlider *l;
@property (weak, nonatomic) IBOutlet UISlider *k;
@property (weak, nonatomic) IBOutlet UITextField *numberOfSteps;
@property (weak, nonatomic) IBOutlet UITextField *stepSize;
- (IBAction)redraw:(id)sender;
- (BOOL)textFieldShouldReturn:(UITextField *)textField;

@end
