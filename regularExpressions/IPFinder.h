//
//  IPFinder.h
//  regularExpressions
//
//  Created by Olexa Boyko on 2/6/17.
//  Copyright © 2017 Ivan Franko Lviv National University. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IPFinder : NSObject

+ (NSArray*)findIPs :(NSString*)input;

@end
