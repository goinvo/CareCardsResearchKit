//
//  ViewController.m
//  CareCards-ResearchKit
//
//  Created by Eric Benoit on 4/15/15.
//  Copyright (c) 2015 Eric Benoit. All rights reserved.
//

#import "ViewController.h"
#import <ResearchKit/ORKInstructionStep.h>
#import <ResearchKit/ORKOrderedTask.h>
#import <ResearchKit/ORKTaskViewController.h>

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

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    ORKInstructionStep *myStep =
        [[ORKInstructionStep alloc] initWithIdentifier:@"intro"];
    myStep.title = @"Welcome to ResearchKit";
    
    ORKOrderedTask *task =
        [[ORKOrderedTask alloc] initWithIdentifier:@"task" steps:@[myStep]];
    
    ORKTaskViewController *taskViewController =
        [[ORKTaskViewController alloc] initWithTask:task taskRunUUID:nil];
    taskViewController.delegate = self;
    [self presentViewController:taskViewController animated:YES completion:nil];
}

@end
