//
//  User.swift
//  Navigation
//
//  Created by Admin on 10/12/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import Foundation

class User{
    public var fullname: String?
    public var avatar: String?
    public var status: String?
    
    public init(fullname: String, avatar: String,
                status: String) {
        self.fullname = fullname
        self.avatar = avatar
        self.status = status
        
      }
}
