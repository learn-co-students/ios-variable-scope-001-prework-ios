//
//  FISAppDelegate.h
//  ios-variable-scope
//
//  Created by iOS Staff on 5/12/15
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(NSMutableArray *)arrayByAddingString:(NSString *)stringToBeAdded
                               toArray:(NSMutableArray *)originalArray;

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array;

-(void)removeAllObjectsFromArray:(NSMutableArray *)array;

@end
