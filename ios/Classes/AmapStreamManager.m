//
//  AmapStreamManager.m
//  amaplocation
//
//  Created by chenping on 2020/8/25.
//

#import "AmapStreamManager.h"

@implementation AmapStreamManager

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static AmapStreamManager *manager = nil;
    dispatch_once(&onceToken, ^{
        manager = [[AmapStreamManager alloc] init];
        AmapFlutterStreamHandler * streamHandler = [[AmapFlutterStreamHandler alloc] init];
        manager.streamHandler = streamHandler;
    });
    
    return manager;
}

@end

@implementation AmapFlutterStreamHandler

- (FlutterError*)onListenWithArguments:(id)arguments eventSink:(FlutterEventSink)eventSink {
    self.eventSink = eventSink;
    return nil;
}

- (FlutterError*)onCancelWithArguments:(id)arguments {
    
    return nil;
}

@end
