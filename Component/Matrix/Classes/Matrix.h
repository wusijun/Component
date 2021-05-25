//
//  Matrix.h
//  Matrix
//
//  Created by 吴四军 on 5/25/21.
//

#import <Foundation/Foundation.h>
#import "PersonProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Matrix : NSObject
+ (instancetype)shareInstance;

@property (nonatomic, strong) id<PersonProtocol> personProtocol;

@end

NS_ASSUME_NONNULL_END
