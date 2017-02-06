//
//  ViewController.m
//  regularExpressions
//
//  Created by Olexa Boyko on 2/6/17.
//  Copyright © 2017 Ivan Franko Lviv National University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *inputField;
@property (weak, nonatomic) IBOutlet UITextView *outputField;
@property (weak, nonatomic) IBOutlet UIButton *findButton;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    _outputField.text = @"";
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tapGesture];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dismissKeyboard {
    [self.view endEditing:YES];
}
- (IBAction)findIPsButtonPressed:(id)sender {
    
    _outputField.text = @"";
    
    NSArray *array = [IPFinder findIPs:_inputField.text];
    
    for (NSString *string in array) {
        _outputField.text = [_outputField.text stringByAppendingString:string];
        _outputField.text = [_outputField.text stringByAppendingString:@"\n"];
    }
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Регулярні вирази" message:@"Виконав студент групи ПМІ-42 Бойко Олекса" preferredStyle:UIAlertControllerStyleAlert];
//        
//        UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
//        [alertController addAction:ok];
//        
//        [self presentViewController:alertController animated:YES completion:nil];
//    });
}


@end
