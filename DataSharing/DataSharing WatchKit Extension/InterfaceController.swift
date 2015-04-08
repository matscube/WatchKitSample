//
//  InterfaceController.swift
//  DataSharing WatchKit Extension
//
//  Created by TakanoriMatsumoto on 2015/04/07.
//  Copyright (c) 2015年 TakanoriMatsumoto. All rights reserved.
//

import WatchKit
import Foundation

let groupName = "group.com.sandbox"

class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        loadTest()
        
        println("hoge")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    // MARK: datasource
    func loadTest() {
        // MARK: common userDefaults
        let commonUserDefaults = NSUserDefaults(suiteName: groupName)!
        // load
        println(commonUserDefaults.valueForKey("Sample"))
    }
}
