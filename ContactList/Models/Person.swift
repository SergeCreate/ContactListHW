//
//  Person.swift
//  ContactList
//
//  Created by Сергей Захаров on 18.04.2023.
//


struct Person {
    let name: String
    let surname: String
    let fullName: String
    let phoneNumber: String
    let email: String
    
    
    static func toGetPerson() -> [Person] {
        var personList: [Person] = []
        let shuffledName = DataManager.name.shuffled()
        let shuffledSurname = DataManager.surname.shuffled()
        let shuffledNumber = DataManager.phoneNumber.shuffled()
        let shuffledEmail = DataManager.email.shuffled()
        
        for item in 0...shuffledName.count - 1 {
            personList.append(Person(
                name: shuffledName[item],
                surname: shuffledSurname[item],
                fullName: "\(shuffledName[item]) \(shuffledSurname[item])",
                phoneNumber: shuffledNumber[item],
                email: shuffledEmail[item]
            )
            )
        }
        
        return personList
    }
}
