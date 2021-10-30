//
//  CurrentUserService.swift
//  Navigation
//
//  Created by Admin on 10/12/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import Foundation

class CurrentUserService: UserService{
    
    
    var currentUser = User(fullname: String(), avatar: String(), status: String())
    var usersArray = [User(fullname: <#String#>, avatar: <#String#>, status: <#String#>)]
    func fetchUser(fullname: String) -> User {    }
    
    func returnUser(){
        if usersArray.contains(where: { (item) -> Bool in
            if item.fullname == currentUser.fullname {
               return true
            }
            else {
                return false
            }
        }){
            fetchUser(fullname:currentUser.fullname!)
        }
        else{
            return
        }
        
    }
   
    
}
