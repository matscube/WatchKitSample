//
//  InterfaceController.swift
//  Clock WatchKit Extension
//
//  Created by TakanoriMatsumoto on 2015/04/08.
//  Copyright (c) 2015年 TakanoriMatsumoto. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var bg: WKInterfaceGroup!
    var timer: NSTimer?
    let timeNumberFormatter = NSDateFormatter()
    let timeFormatter = NSDateFormatter()
    @IBOutlet weak var clock: WKInterfaceLabel!
    @IBOutlet weak var colorLabel: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "tick:", userInfo: nil, repeats: true)
        timeNumberFormatter.dateFormat = "HHmmss"
        timeFormatter.dateFormat = "HH:mm:ss"
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        
        timer?.invalidate()
    }
    
    // Clock
    func tick(timer: NSTimer) {
        let now = NSDate()
        let string = timeNumberFormatter.stringFromDate(now)
        let timeString = timeFormatter.stringFromDate(now)
        
        clock.setText(timeString)
        colorLabel.setText(string)
        bg.setBackgroundColor(string.UIColor)
    }

}
