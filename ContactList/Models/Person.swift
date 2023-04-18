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
        let shuffledName = DataStore.name.shuffled()
        let shuffledSurname = DataStore.surname.shuffled()
        let shuffledNumber = DataStore.phoneNumber.shuffled()
        let shuffledEmail = DataStore.email.shuffled()
        
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
