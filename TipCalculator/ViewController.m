//
//  ViewController.m
//  TipCalculator
//
//  Created by Johnny on 2015-01-24.
//  Copyright (c) 2015 Empath Solutions. All rights reserved.
//

#import "ViewController.h"


#define SLIDER_INITIAL		15
#define SLIDER_INCREMENT	5


@interface ViewController ()

@end


@implementation ViewController


- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	[self.tipPercentageSlider setValue:SLIDER_INITIAL animated:YES];
	self.tipPercentageTextField.text = [NSString stringWithFormat:@"%d", SLIDER_INITIAL];
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


- (void)textFieldsResignFirstResponder {
	
	[self.billAmountTextField resignFirstResponder];
	[self.tipPercentageTextField resignFirstResponder];
}


- (IBAction)calculateTip {

	[self textFieldsResignFirstResponder];

	double billAmount = self.billAmountTextField.text.doubleValue;
	double tipPercentage = self.tipPercentageTextField.text.doubleValue / 100;
	double tipAmount =  billAmount * tipPercentage;
	
	self.tipAmountLabel.text = [NSString stringWithFormat:@"%.2f", tipAmount];
}


- (IBAction)tipPercentageChanged {

	[self textFieldsResignFirstResponder];
	
	int newTipPercentage = ((int)((self.tipPercentageSlider.value + SLIDER_INCREMENT / 2.0) / SLIDER_INCREMENT) * SLIDER_INCREMENT);
	
	[self.tipPercentageSlider setValue:newTipPercentage animated:YES];
	self.tipPercentageTextField.text = [NSString stringWithFormat:@"%d", newTipPercentage];
	
	[self calculateTip];
}


@end
