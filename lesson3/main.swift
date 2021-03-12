 //
//  main.swift
//  lesson3
//
//  Created by Natalia on 09.03.2021.
//

import Foundation

 let users = [("Иванов", "Иван", "Иванович"),
              ("Петров", "Петр", "Петрович"),
              ("Сидоров", "Сидор", "Сидорович"),
              ("Александров", "Александр", "Александрович")]
 
 enum PrintUserInfoMode: String {
    case short = "Сокр"
    case middle = "Обычный"
    case full = "Подробный"
 }
 
 func printUsers(_users: [(String, String, String)], mode: PrintUserInfoMode) {
    print(mode.rawValue)
    for user in users {
        switch mode {
        case .full:
            print(user.0, user.1, user.2)
        case .middle:
            print(user.0, user.1)
        case .short:
            print(user.0)
        }
    }
 }
 printUsers(_users: users, mode: .full)
