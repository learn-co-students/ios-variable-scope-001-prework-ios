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

/*
 
 * Write your method definitions here.
 
 */
-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    
    NSMutableArray *stringAddedArray = [array mutableCopy];
    
    [stringAddedArray addObject:string];
    
    return stringAddedArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSUInteger count = 0;
    
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    NSArray *numbers = @[ @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"0" ];
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        
        NSString *string = array[i];
        
        // remove punctuations
        NSString *withoutPunctuation = [string copy];
        for (NSUInteger k = 0; k < [punctuations count]; k++) {
            NSString *punctuation = punctuations[k];
            withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation
                                                                               withString:@""];
        }
        
        // remove numbers
        NSString *withoutPunctuationNumbers = [withoutPunctuation copy];
        for (NSUInteger j = 0; j < [numbers count]; j++) {
            NSString *number = numbers[j];
            withoutPunctuationNumbers = [withoutPunctuationNumbers stringByReplacingOccurrencesOfString:number
                                                                                             withString:@""];
        }
        
        // remove whitespace
        NSString *spaceless = [withoutPunctuationNumbers stringByReplacingOccurrencesOfString:@" "
                                                                                   withString:@""];
        
        NSString *uppercase = [spaceless uppercaseString];
        
        if ([spaceless length] > 0 && [spaceless isEqualToString:uppercase]) {
            count++;
        }
    }
    
    return count;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array {
    [array removeAllObjects];
}

@end
