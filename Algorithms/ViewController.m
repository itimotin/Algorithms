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
    
//    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
//
//        [dict setValue:[NSNumber numberWithInt:1]forKey:@"letter"];
//        [dict setValue:[NSNumber numberWithInt:2] forKey:@"word"];
//
//    });
    for(NSString* s in letters){
        
    }
    NSUInteger numberOfOccurrences = [[yourString componentsSeparatedByString:@" "] count] - 1;
    for(NSString *key in [dict allKeys]){
        NSLog(@"Occurence of %@ = %@", key, [dict objectForKey:key]);
    }
    
    
}




- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
