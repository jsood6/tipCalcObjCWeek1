//
//  ViewController.m
//  tipsterObjC
//
//  Created by jsood on 6/18/18.
//  Copyright © 2018 Jigyasaa Sood. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipPercentSegments;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)hideKeyboard:(UITapGestureRecognizer *)sender {
    NSLog(@"hello");
    [self.view endEditing:YES];
}

- (IBAction)editedBillAmount:(id)sender {
    double bill = [self.billField.text doubleValue];
    
    
    NSArray * tipPercents = @[@(0.15), @(0.20), @(0.25)];
    
    double tipSegmentIndex = [tipPercents[self.tipPercentSegments.selectedSegmentIndex] doubleValue];
    
    double tip = bill * tipSegmentIndex;
    double total = bill + tip;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
