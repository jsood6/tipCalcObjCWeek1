//
//  SettingsViewController.m
//  tipsterObjC
//
//  Created by jsood on 6/18/18.
//  Copyright © 2018 Jigyasaa Sood. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *firstTipLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondTipLabel;
@property (weak, nonatomic) IBOutlet UILabel *thirdTipLabel;


@end

@implementation SettingsViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    double doubleValue1 = [defaults doubleForKey:@"default_tip1_percentage"];
    NSString * tipVal1 = [NSString stringWithFormat:@"%.0f", doubleValue1];
    self.firstTipLabel.text = tipVal1;
    
    double doubleValue2 = [defaults doubleForKey:@"default_tip2_percentage"];
    NSString * tipVal2 = [NSString stringWithFormat:@"%.0f", doubleValue2];
    self.secondTipLabel.text = tipVal2;
    
    double doubleValue3 = [defaults doubleForKey:@"default_tip3_percentage"];
    NSString * tipVal3 = [NSString stringWithFormat:@"%.0f", doubleValue3];
    self.thirdTipLabel.text = tipVal3;
    // Do any additional setup after loading the view.
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    double doubleValue1 = [defaults doubleForKey:@"default_tip1_percentage"];
    NSString * tipVal1 = [NSString stringWithFormat:@"%.0f", doubleValue1];
    self.firstTipLabel.text = tipVal1;
    
    double doubleValue2 = [defaults doubleForKey:@"default_tip2_percentage"];
    NSString * tipVal2 = [NSString stringWithFormat:@"%.0f", doubleValue2];
    self.secondTipLabel.text = tipVal2;
    
    double doubleValue3 = [defaults doubleForKey:@"default_tip3_percentage"];
    NSString * tipVal3 = [NSString stringWithFormat:@"%.0f", doubleValue3];
    self.thirdTipLabel.text = tipVal3;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)addBtnPressed:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if([sender tag] == 0){
        double firstTipVal =  [self.firstTipLabel.text doubleValue];
        firstTipVal = firstTipVal + 1;
        self.firstTipLabel.text = [NSString stringWithFormat:@"%.0f", firstTipVal];
        [defaults setDouble:firstTipVal forKey:@"default_tip1_percentage"];
        [defaults synchronize];
    }
    
    else if([sender tag] == 1){
        double secondTipVal =  [self.secondTipLabel.text doubleValue];
        secondTipVal = secondTipVal + 1;
        self.secondTipLabel.text = [NSString stringWithFormat:@"%.0f", secondTipVal];
        [defaults setDouble:secondTipVal forKey:@"default_tip2_percentage"];
        [defaults synchronize];
    }
    
    else if([sender tag] == 2){
        double thirdTipVal =  [self.thirdTipLabel.text doubleValue];
        thirdTipVal = thirdTipVal + 1;
        self.thirdTipLabel.text = [NSString stringWithFormat:@"%.0f", thirdTipVal];
        [defaults setDouble:thirdTipVal forKey:@"default_tip3_percentage"];
        [defaults synchronize];
    }
}

- (IBAction)subtractBtnPressed:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if([sender tag] == 0){
        double firstTipVal =  [self.firstTipLabel.text doubleValue];
        firstTipVal = firstTipVal - 1;
        self.firstTipLabel.text = [NSString stringWithFormat:@"%.0f", firstTipVal];
        [defaults setDouble:firstTipVal forKey:@"default_tip1_percentage"];
        [defaults synchronize];
    }
    
    else if([sender tag] == 1){
        double secondTipVal =  [self.secondTipLabel.text doubleValue];
        secondTipVal = secondTipVal - 1;
        self.secondTipLabel.text = [NSString stringWithFormat:@"%.0f", secondTipVal];
        [defaults setDouble:secondTipVal forKey:@"default_tip2_percentage"];
        [defaults synchronize];
    }
    
    else if([sender tag] == 2){
        double thirdTipVal =  [self.thirdTipLabel.text doubleValue];
        thirdTipVal = thirdTipVal - 1;
        self.thirdTipLabel.text = [NSString stringWithFormat:@"%.0f", thirdTipVal];
        [defaults setDouble:thirdTipVal forKey:@"default_tip3_percentage"];
        [defaults synchronize];
    }
}




- (IBAction)resetTipVals:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    double firstTipVal = 15;
    self.firstTipLabel.text = [NSString stringWithFormat:@"%.0f", firstTipVal];
    [defaults setDouble:firstTipVal forKey:@"default_tip1_percentage"];
    [defaults synchronize];
    
    double secondTipVal = 20;
    self.secondTipLabel.text = [NSString stringWithFormat:@"%.0f", secondTipVal];
    [defaults setDouble:secondTipVal forKey:@"default_tip2_percentage"];
    [defaults synchronize];
    
    double thirdTipVal = 25;
    self.thirdTipLabel.text = [NSString stringWithFormat:@"%.0f", thirdTipVal];
    [defaults setDouble:thirdTipVal forKey:@"default_tip3_percentage"];
    [defaults synchronize];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
