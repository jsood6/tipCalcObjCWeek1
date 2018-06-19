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
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    double doubleValue1 = [defaults doubleForKey:@"default_tip1_percentage"];
    NSString * tipVal1 = [NSString stringWithFormat:@"%.0f%%", doubleValue1];
    
    double doubleValue2 = [defaults doubleForKey:@"default_tip2_percentage"];
    NSString * tipVal2 = [NSString stringWithFormat:@"%.0f%%", doubleValue2];
    
    double doubleValue3 = [defaults doubleForKey:@"default_tip3_percentage"];
    NSString * tipVal3 = [NSString stringWithFormat:@"%.0f%%", doubleValue3];
    
    [self.tipPercentSegments setTitle:tipVal1 forSegmentAtIndex:0];
    
    [self.tipPercentSegments setTitle:tipVal2 forSegmentAtIndex:1];
    
    [self.tipPercentSegments setTitle:tipVal3 forSegmentAtIndex:2];
    
    NSLog(@"first tip is:%f", doubleValue1 );
      NSLog(@"second tip is:%f", doubleValue2 );
      NSLog(@"third tip is:%f", doubleValue3 );
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    double doubleValue1 = [defaults doubleForKey:@"default_tip1_percentage"];
    NSString * tipVal1 = [NSString stringWithFormat:@"%.0f%%", doubleValue1];
    
    double doubleValue2 = [defaults doubleForKey:@"default_tip2_percentage"];
    NSString * tipVal2 = [NSString stringWithFormat:@"%.0f%%", doubleValue2];
    
    double doubleValue3 = [defaults doubleForKey:@"default_tip3_percentage"];
    NSString * tipVal3 = [NSString stringWithFormat:@"%.0f%%", doubleValue3];
    
    [self.tipPercentSegments setTitle:tipVal1 forSegmentAtIndex:0];
    
    [self.tipPercentSegments setTitle:tipVal2 forSegmentAtIndex:1];
    
    [self.tipPercentSegments setTitle:tipVal3 forSegmentAtIndex:2];
    
    NSLog(@"first tip is:%.0f", doubleValue1 );
    NSLog(@"second tip is:%.0f", doubleValue2 );
    NSLog(@"third tip is:%.0f", doubleValue3 );
}

- (IBAction)hideKeyboard:(UITapGestureRecognizer *)sender {
    NSLog(@"hello");
    [self.view endEditing:YES];
}

- (IBAction)editedBillAmount:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    double doubleValue1 = [defaults doubleForKey:@"default_tip1_percentage"];
    NSString * tipVal1 = [NSString stringWithFormat:@"%.0f%%", doubleValue1];
    
    double doubleValue2 = [defaults doubleForKey:@"default_tip2_percentage"];
    NSString * tipVal2 = [NSString stringWithFormat:@"%.0f%%", doubleValue2];
    
    double doubleValue3 = [defaults doubleForKey:@"default_tip3_percentage"];
    NSString * tipVal3 = [NSString stringWithFormat:@"%.0f%%", doubleValue3];
    
    
    [self.tipPercentSegments setTitle:tipVal1 forSegmentAtIndex:0];
    
    [self.tipPercentSegments setTitle:tipVal2 forSegmentAtIndex:1];
    
    [self.tipPercentSegments setTitle:tipVal3 forSegmentAtIndex:2];
    
    
    double bill = [self.billField.text doubleValue];
    
    
    //NSArray * tipPercents = @[@(floorf(doubleValue1 * 100) / 100), @(floorf(doubleValue2 * 100) / 100), @(floorf(doubleValue3 * 100) / 100)];
    NSArray * tipPercents = @[@(doubleValue1/ 100), @(doubleValue2/ 100), @(doubleValue3/ 100)];
    
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
