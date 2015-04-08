//
//  InterfaceController.swift
//  Counter WatchKit Extension
//
//  Created by TakanoriMatsumoto on 2015/04/08.
//  Copyright (c) 2015年 TakanoriMatsumoto. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var button: WKInterfaceButton!
    var counter = Counter()

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func increaseCount() {
        
        counter.increase()
        button.setTitle("\(counter.count)")
    }
}
