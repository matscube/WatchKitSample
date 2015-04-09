//
//  InterfaceController.swift
//  SharedDB WatchKit Extension
//
//  Created by TakanoriMatsumoto on 2015/04/09.
//  Copyright (c) 2015年 TakanoriMatsumoto. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        println(DBManager.sharedInstance.countUser())
        let users = DBManager.sharedInstance.getUsers()
        println(users[0].name)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
