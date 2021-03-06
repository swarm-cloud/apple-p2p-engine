//
//  NetworkResponse.h
//  SwarmCloudSDK
//
//  Created by Timmy on 2021/5/7.
//  Copyright © 2021 cdnbye. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SWCNetworkResponse : NSObject

@property(nonatomic, copy, readonly) NSString *contentType;
@property(nonatomic, strong, readonly) NSData *data;          // 如果没有数据为 nil
@property(nonatomic, strong, readonly) NSURL *responseUrl;
@property(nonatomic, assign, readonly) NSInteger statusCode;
@property (readonly, assign, readonly) NSUInteger fizeSize;

- (instancetype)initWithData:(NSData *_Nullable)data contentType:(NSString *)type responseUrl:(NSURL *_Nullable)responseUrl statusCode:(NSInteger)code fileSize:(NSUInteger)size;

- (instancetype)initWithData:(NSData *_Nullable)data contentType:(NSString *)type responseUrl:(NSURL *_Nullable)responseUrl;

- (instancetype)initWithNoResponse;

- (instancetype)initWithData:(NSData *_Nullable)data contentType:(NSString *)type;

@end

NS_ASSUME_NONNULL_END
