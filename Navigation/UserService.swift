//
//  UserService.swift
//  Navigation
//
//  Created by Admin on 10/12/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import Foundation

protocol UserService{
    func fetchUser(fullname: String) -> User
}

class CurrentUserService: UserService{
    
    
    var currentUser = User()
    var usersArray = [User()]
    func fetchUser(fullname: String) -> User {
        return User()
    }
    
    func returnUser() -> User{
        if usersArray.contains(where: { (item) -> Bool in
            if item.fullname == currentUser.fullname {
               return true
            }
            else {
                return false
            }
        }){
            return fetchUser(fullname:currentUser.fullname!)
        }
        else{
            return User()
        }
        
    }
   
    
}
