//
//  ORKTaskViewController.m
//  CareCards-ResearchKit
//
//  Created by Eric Benoit on 4/16/15.
//  Copyright (c) 2015 Eric Benoit. All rights reserved.
//

#import "ORKTaskViewController.h"

@implementation ORKTaskViewController

- (void)taskViewController:(ORKTaskViewController *)taskViewController
       didFinishWithReason:(ORKTaskViewControllerFinishReason)reason
                     error:(NSError *)error {
    
    ORKTaskResult *taskResult = [taskViewController result];
    // You could do something with the result here.
    
    // Then, dismiss the task view controller.
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
