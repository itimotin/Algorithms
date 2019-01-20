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
    NSString *letters = @"jg2uy10u1jjjn1end";
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    
    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
        for(int i=0; i< letters.length; i++){
            NSLog(@"%C",[letters characterAtIndex:i]);
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
        NSLog(@"Occurence of %@ = %@", key, [dict objectForKey:key]);
    }
    
    
}




- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
