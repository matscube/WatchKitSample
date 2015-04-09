//
//  ViewController.swift
//  SharedDB
//
//  Created by TakanoriMatsumoto on 2015/04/09.
//  Copyright (c) 2015年 TakanoriMatsumoto. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        DBManager.sharedInstance.addUser()
        println(DBManager.sharedInstance.countUser())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

