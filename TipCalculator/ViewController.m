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
	
	[self.billAmountTextField resignFirstResponder];

	double billAmount = self.billAmountTextField.text.doubleValue;
	double tipPercentage = self.tipPercentageTextField.text.doubleValue / 100;
	double tipAmount =  billAmount * tipPercentage;
	
	self.tipAmountLabel.text = [NSString stringWithFormat:@"%.2f", tipAmount];
}


@end
