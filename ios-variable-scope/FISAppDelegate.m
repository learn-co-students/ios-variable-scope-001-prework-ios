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

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array; {
    
    NSMutableArray *mArray = [array mutableCopy];
    //Original array must not be modified, what I did at first was [array copy] however that didn't pass the tests. I had to change it to a mutableCopy (despite the original copy being already defined as a NSMutableArray).
    
    [mArray addObject:string];
    
    return mArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array; {
    
    NSUInteger count = 0;
    //Created this NSUInteger count outside of the loop to ensure it could be returned at the end.
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        
        NSString *uppercase = [array[i] uppercaseString];
        //This String wasn't necessary, however I liked it for the readability.
        
        if ([array[i] isEqualToString:uppercase]) {
            //If the array at index is equal to uppercaseString then add to the count.
            
            count++;
        }
    }
    return count;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array; {
    
    [array removeAllObjects];
    
    return;
}


@end
