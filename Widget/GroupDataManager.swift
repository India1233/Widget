//
//  GroupDataManager.swift
//  Widget
//
//  Created by Suresh Shiga on 19/11/19.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation


class GroupDataManager {
    
  static let shared = GroupDataManager()
    
    private var shareDefaults = UserDefaults(suiteName: "group.com.Shigas.Widget")
    
    func saveData(value: Any, key: String)  {
        shareDefaults?.setValue(value, forKey: key)
    }
    
    func retrieveData(key: String) -> Any? {
        return shareDefaults?.value(forKey:key)
    }
    
    func removeData(key: String)  {
        shareDefaults?.removeObject(forKey: key)
    }
}


