//
//  main.m
//  TryObjcProperty
//
//  Created by Jason Wu on 2019/3/27.
//  Copyright © 2019 Jason Wu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TryProperty : NSObject

@property (atomic) CGRect rect;

@end

@interface TryProperty ()

@end

@implementation TryProperty

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TryProperty *obj = [[TryProperty alloc] init];
        NSOperationQueue *queue = [NSOperationQueue new];
        queue.maxConcurrentOperationCount = 500;
        dispatch_group_t group = dispatch_group_create();
        for (int i = 0; i <= 100000 ; i++) {
            dispatch_group_enter(group);
            [queue addOperationWithBlock:^{
                obj.rect = CGRectMake(i, i, i, i);
                dispatch_group_leave(group);
                CGRect getRect = obj.rect;
                if (getRect.origin.x != getRect.origin.y) {
                    NSLog(@"%lf, %lf, %lf, %lf", getRect.origin.x, getRect.origin.y, getRect.size.width, getRect.size.height);
                }
            }];
        }
        dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
    }
    return 0;
}
