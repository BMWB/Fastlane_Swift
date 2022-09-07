//
//  DZKoinNetworkResult.h
//  DZKoinProtocols
//
//  Created by admin on 2021/11/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DZKoinNetworkResult : NSObject

@property (nonatomic, strong) id responseObject;
@property (nonatomic, strong) NSError *error;

@end

NS_ASSUME_NONNULL_END
