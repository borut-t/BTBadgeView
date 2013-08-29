//
//  ViewController.m
//  BTBadgeView Sample App
//
//  Created by Borut Tomažin on 4/12/13.
//  Copyright (c) 2013 Borut Tomazin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, strong) IBOutlet BTBadgeView *badgeOne;
@property(nonatomic, strong) IBOutlet BTBadgeView *badgeTwo;
@property(nonatomic, strong) IBOutlet BTBadgeView *badgeThree;
@property(nonatomic, strong) IBOutlet BTBadgeView *badgeFour;
@property(nonatomic, strong) IBOutlet UISlider *valueSlider;

-(IBAction)slideValueChanged:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    NSLog(@"%s",__func__);
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Badge One is default (no config)
    
    // Badge Two
    self.badgeTwo.fillColor = [UIColor purpleColor];
    self.badgeTwo.hideWhenZero = YES;
    
    //Badge Three
    self.badgeThree.fillColor = [UIColor blackColor];
    self.badgeThree.strokeColor = [UIColor yellowColor];
    self.badgeThree.textColor = [UIColor yellowColor];
    self.badgeThree.value = @"0.545b";
    
    // Badge Four
    self.badgeFour.shine = NO;
    self.badgeFour.shadow = NO;
    
    [self slideValueChanged:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(IBAction)slideValueChanged:(id)sender
{
    NSLog(@"%s",__func__);
    //NSUInteger sliderValue = self.valueSlider.value;
    NSString *sliderValue = [NSString stringWithFormat:@"%d",(NSUInteger)self.valueSlider.value];
    NSLog(@"Value: %@",sliderValue);
    
    self.badgeOne.value = sliderValue;
    self.badgeTwo.value = sliderValue;
    self.badgeThree.value = sliderValue;
    self.badgeFour.value = sliderValue;
    
}

@end
