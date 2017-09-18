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
    
//    NSMutableArray *crapCrap = [[NSMutableArray alloc] init];
    
//    [crapCrap addObject:@"Hey"];
//    [crapCrap addObject:@"This"];
//    [crapCrap addObject:@"Is"];
//    
//    NSLog(@"This is the new array %@", crapCrap);
//    
//    NSMutableArray *newCrapCrap = [self arrayByAddingString:@"Crap" toArray:crapCrap];
//    
//    NSLog(@"This is the original array %@", crapCrap);
//    NSLog(@"This is the new array %@", newCrapCrap);
    
    
    return YES;
}


- (void)removeAllObjectsFromArray:(NSMutableArray *)array {
    
    [array removeAllObjects];
    
    
}

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    
    // make local variable of passed array (uneccesary)
    NSMutableArray *passedArray = array;
    // make a local variable of the passed array by making a copy of passed arry
    NSMutableArray *copyOfPassedMutableArray = [passedArray mutableCopy];

    // add object to the copy of passed array
    [copyOfPassedMutableArray addObject:string];
    
    // return the copy and not the original :)
    return copyOfPassedMutableArray;

}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSUInteger countOfUpperCaseStrings = 0;
    
    for (NSUInteger i = 0; i < array.count; i++) {
        // get array object
        NSString *arrayObject = [array objectAtIndex:i];
        // capitalize the gotten object with new variable
        NSString *properCaseofObject = [arrayObject uppercaseString];
        
        // if the received object is equal to the capitalized version, then increment
        if ([arrayObject isEqualToString:properCaseofObject]) {
            countOfUpperCaseStrings++;
        }
       
    }

    return countOfUpperCaseStrings;
}




@end
