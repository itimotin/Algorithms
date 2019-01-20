//
//  ViewController.m
//  Algorithms
//
//  Created by Timotin Ion on 1/15/19.
//  Copyright © 2019 Timotin. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *letters = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    
    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
        for(int i=0; i< letters.length; i++){
            NSString *letter = [NSString stringWithFormat:@"%c",[letters characterAtIndex:i] ];
            if([dict objectForKey:letter] != nil){
                NSInteger count = [[dict objectForKey:letter] integerValue];
                count++;
                [dict setValue:[NSNumber numberWithInteger:count] forKey:letter];
            }else{
                [dict setValue:[NSNumber numberWithInteger:1] forKey:letter];
            }
        }
    });

    for(NSString *key in [dict allKeys]){
//        NSLog(@"Occurence of %@ = %@", key, [dict objectForKey:key]);
        printf("\"%s\" = %s\n",[key UTF8String], [[[dict objectForKey:key] stringValue] UTF8String]);
    }
    
    
}




- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
