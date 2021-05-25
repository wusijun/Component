//
//  Person.m
//  SubModule1
//
//  Created by 吴四军 on 5/25/21.
//

#import "Person.h"
#import <Matrix/Matrix.h>

@implementation Person

- (void)noonTime
{
    [[Matrix shareInstance].personProtocol eat];
}

@end
