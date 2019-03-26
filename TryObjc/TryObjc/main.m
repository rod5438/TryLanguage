//
//  main.m
//  TryObjc
//
//  Created by Jason Wu on 2019/3/26.
//  Copyright © 2019 Jason Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CFTimeInterval startTime = CACurrentMediaTime();
        for (int i = 0 ; i <= 10000000 ; i++) {
            @autoreleasepool {
                NSArray *array = @[@(1), @(2), @(3), @(4), @(5), @(6)];
            }
        }
        CFTimeInterval elapsedTime = CACurrentMediaTime() - startTime;
        NSLog(@"elapsedTime = %lf", elapsedTime);
    }
    return 0;
}
