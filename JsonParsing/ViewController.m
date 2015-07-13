//
//  ViewController.m
//  JsonParsing
//
//  Created by Akash Rastogi on 03/07/15.
//  Copyright (c) 2015 Akash. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self readJsonData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)readJsonData {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"json"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSData *data = [NSData dataWithContentsOfURL:url];
    NSError *error;
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData: data
                                                         options: NSJSONReadingAllowFragments
                                                           error: &error];
    NSLog(@"Parsed json data- %@", dict);

}
@end
