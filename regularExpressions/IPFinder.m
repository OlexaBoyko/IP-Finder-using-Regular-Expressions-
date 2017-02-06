//
//  IPFinder.m
//  regularExpressions
//
//  Created by Olexa Boyko on 2/6/17.
//  Copyright © 2017 Ivan Franko Lviv National University. All rights reserved.
//

#import "IPFinder.h"

@interface IPFinder ()

@end

@implementation IPFinder

+ (NSArray*)findIPs :(NSString*)input
{
    NSString *text = input;
    NSString *pattern = @"(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)";
    NSError *error = NULL;
    NSRegularExpressionOptions regexOptions = 0;
    NSRegularExpression *regExp = [[NSRegularExpression alloc] initWithPattern:pattern options:regexOptions error:&error];
    
    if (error)
    {
        NSLog(@"Невірний паттерн");
    } else {
        NSLog(@"Паттерн пройшов перевірку");
    }
    
    NSMatchingOptions matchingOptions = 0;
    
    NSRange stringRange = (NSRange){0, [text length]};
    NSArray *matches = [regExp matchesInString:text options:matchingOptions range:stringRange];
    
    NSMutableArray *result = [[NSMutableArray alloc] initWithCapacity:0];
    
    for (NSTextCheckingResult *value in matches) {
        [result addObject:[text substringWithRange:value.range]];
    }
    
    
    return result;
}



@end
