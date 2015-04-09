//
//  DBManager.swift
//  SharedDB
//
//  Created by TakanoriMatsumoto on 2015/04/09.
//  Copyright (c) 2015年 TakanoriMatsumoto. All rights reserved.
//

import Realm

class User: RLMObject {
    dynamic var name: String = ""
    dynamic var email: String = ""
}

let groupName = "group.com.sandbox"
class DBManager: NSObject {
    private var realm: RLMRealm!
    private override init() {
        
        let fileManager = NSFileManager.defaultManager()
        let groupPath = fileManager.containerURLForSecurityApplicationGroupIdentifier(groupName)!.path!
        let realmPath = groupPath.stringByAppendingPathComponent("SharedDB.realm")
        
        realm = RLMRealm(path: realmPath)
    }
    
    class var sharedInstance: DBManager {
        struct Static {
            static let instance = DBManager()
        }
        return Static.instance
    }
    
    func addUser() {
        var user = User()
        user.name = "Takanori Matsumoto"
        user.email = "ttttt@aaaaaa"
        realm.beginWriteTransaction()
        realm.addObject(user)
        realm.commitWriteTransaction()
    }
    func countUser() -> UInt {
        var result = User.allObjectsInRealm(realm)
        return result.count
    }
    func getUsers() -> [User] {
        var result = User.allObjectsInRealm(realm)
        var users = [User]()
        for var i: UInt = 0; i < result.count; i++ {
            users.append(result.objectAtIndex(i) as User)
        }
        return users
    }
}
