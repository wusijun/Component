//
//  Matrix.m
//  Matrix
//
//  Created by 吴四军 on 5/25/21.
//

#import "Matrix.h"

@implementation Matrix

+ (instancetype)shareInstance
{
    static id _instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });

    return _instance;
}


@end
