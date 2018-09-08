//
//  main.m
//  trie
//
//  Created by Pawel Rusin on 12/4/16.
//  Copyright © 2016 Pawel Rusin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        NSArray *myBeers = @[@"Hoegaarden",@"Leffe",@"Guiness",@"Corona"];
        [myBeers enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSString *beerName = obj;
            NSLog(@"Beer #%d is %@",idx,beerName);
            if ([beerName isEqualToString:@"Guiness"]) {
                //Assigning YES to the stop variable is the equivalent of calling "break" during fast enumeration
                *stop = YES;
            }
        }];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
