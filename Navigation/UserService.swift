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
