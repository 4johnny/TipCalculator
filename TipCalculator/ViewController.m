//
//  ViewController.m
//  TipCalculator
//
//  Created by Johnny on 2015-01-24.
//  Copyright (c) 2015 Empath Solutions. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end


@implementation ViewController


- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


- (IBAction)calculateTip {

	self.tipAmountLabel.text = [NSString stringWithFormat:@"%.2f", self.billAmountTextField.text.intValue * 0.15];
}


@end
