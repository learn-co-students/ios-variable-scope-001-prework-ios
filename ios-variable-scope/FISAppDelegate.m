//
//  FISAppDelegate.m
//  ios-variable-scope
//
//  Created by iOS Staff on 5/12/15
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array{
    array = [array mutableCopy];
    [array addObject:string];
    return array;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
     NSMutableArray *upperArray = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0;i < array.count; i++){
        if ([array[i] isEqualToString: [array[i] uppercaseString]]){
            [upperArray addObject: array[i]];
            
        }
        }
    
    return upperArray.count;
}


    -(void)removeAllObjectsFromArray:(NSMutableArray *)array{
        [array removeAllObjects];
        
        
}



@end
