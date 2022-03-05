//
//  User.swift
//  Login v2
//
//  Created by Игорь Солодянкин on 04.03.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let firstname: String
    let secondname: String
    
    static func getUserData() -> User {
        User(
            login: "",
            password: "",
            firstname: "Igor",
            secondname: "Solodyankin"
        )
    }
}
