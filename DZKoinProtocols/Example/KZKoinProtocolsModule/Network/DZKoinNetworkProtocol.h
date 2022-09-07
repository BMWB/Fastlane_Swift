//
//  DZKoinNetworkProtocol.h
//  AFNetworking
//
//  Created by admin on 2021/11/19.
//

#import <Foundation/Foundation.h>
#import "DZKoinNetworkResult.h"


NS_ASSUME_NONNULL_BEGIN

typedef void (^DZKoinNetworkResultHandler)(DZKoinNetworkResult *result);

@protocol DZKoinNetworkProtocol <NSObject>

- (void)dz_POST:(NSString *)path
     completion:(DZKoinNetworkResultHandler)completion;

- (void)dz_POST:(NSString *)path
     parameters:(NSDictionary *)parameters
     completion:(DZKoinNetworkResultHandler)completion;

@end

NS_ASSUME_NONNULL_END
