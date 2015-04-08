//
//  ViewController.swift
//  DataSharing
//
//  Created by TakanoriMatsumoto on 2015/04/07.
//  Copyright (c) 2015年 TakanoriMatsumoto. All rights reserved.
//

import UIKit

let groupName = "group.com.sandbox"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        saveTest()
    }
    
    func saveTest() {
        // MARK: common userDefaults
        let commonUserDefaults = NSUserDefaults(suiteName: groupName)!
        // save
        commonUserDefaults.setValue(1, forKey: "Sample")
        // load
        println(commonUserDefaults.valueForKey("Sample"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

