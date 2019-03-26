//
//  main.swift
//  TrySwift
//
//  Created by Jason Wu on 2019/3/26.
//  Copyright © 2019 Jason Wu. All rights reserved.
//

import Foundation
import Quartz


let startTime:CFTimeInterval = CACurrentMediaTime()
for _ in 0...10000000 {
    autoreleasepool {
        var array:[Double] = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0];
    }
}
let elapsedTime:CFTimeInterval = CACurrentMediaTime() - startTime

print("elapsedTime = \(elapsedTime)");
