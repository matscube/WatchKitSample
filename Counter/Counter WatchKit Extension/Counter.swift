//
//  Counter.swift
//  Counter
//
//  Created by TakanoriMatsumoto on 2015/04/08.
//  Copyright (c) 2015年 TakanoriMatsumoto. All rights reserved.
//

import Foundation

let NSUserDefaultsKeyCounter = "NSUserDefaultsKeyCounter"
struct Counter {
    private (set) var count = 0
    func save() {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(count, forKey: NSUserDefaultsKeyCounter)
    }
    mutating func increase() {
        count++
        save()
    }
    mutating func load() {
        count = NSUserDefaults.standardUserDefaults().integerForKey(NSUserDefaultsKeyCounter)
    }
    mutating func reset() {
        count = 0
        save()
    }
}