#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@interface GCDAsyncUdpSocket
@end

%hook GCDAsyncUdpSocket

- (BOOL)bindToPort:(uint16_t)port interface:(NSString *)interface error:(NSError **)errPtr {
	return %orig(port, @"en0", errPtr);
}

%end

@interface GCDAsyncSocket

@end

%hook GCDAsyncUdpSocket

- (BOOL)connectToHost:(NSString *)host
               onPort:(uint16_t)port
         viaInterface:(NSString *)interface
          withTimeout:(NSTimeInterval)timeout
                error:(NSError **)errPtr {
	return %orig(host, port, @"en0", timeout, errPtr);
}

- (BOOL)acceptOnInterface:(NSString *)interface port:(uint16_t)port error:(NSError **)errPtr {
	return %orig(@"en0", port, errPtr);
}

%end

