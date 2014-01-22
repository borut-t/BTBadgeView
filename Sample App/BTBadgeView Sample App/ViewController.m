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
@property(nonatomic, strong) IBOutlet BTBadgeView *badgeFive;
@property(nonatomic, strong) IBOutlet UISlider *valueSlider;

-(IBAction)slideValueChanged:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Badge One (default)
    
    // Badge Two
    self.badgeTwo.fillColor = [UIColor purpleColor];
    self.badgeTwo.hideWhenEmpty = YES;
    
    // Badge Three
    self.badgeThree.fillColor = [UIColor blackColor];
    self.badgeThree.strokeColor = [UIColor yellowColor];
    self.badgeThree.textColor = [UIColor yellowColor];
    
    // Badge Four
    self.badgeFour.shine = NO;
    self.badgeFour.shadow = NO;
    
    // Badge Five
    self.badgeFive.value = [NSString stringWithFormat:@"Version %@",
                            [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]];
    
    self.valueSlider.value = 3;
    [self slideValueChanged:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)slideValueChanged:(id)sender
{
    NSString *sliderValue = [NSString stringWithFormat:@"%d",(NSUInteger)self.valueSlider.value];
    
    self.badgeOne.value = sliderValue;
    self.badgeTwo.value = sliderValue;
    self.badgeThree.value = sliderValue;
    self.badgeFour.value = sliderValue;
}

@end
