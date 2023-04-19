//
//  Person.swift
//  ContactList
//
//  Created by Сергей Захаров on 18.04.2023.
//


struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    
    static func toGetPerson(from dataStore: DataStore) -> [Person] {
        var personList: [Person] = []
        let shuffledName = dataStore.name.shuffled()
        let shuffledSurname = dataStore.surname.shuffled()
        let shuffledNumber = dataStore.phoneNumber.shuffled()
        let shuffledEmail = dataStore.email.shuffled()
        
        for item in 0..<shuffledName.count {
            personList.append(Person(
                name: shuffledName[item],
                surname: shuffledSurname[item],
                phoneNumber: shuffledNumber[item],
                email: shuffledEmail[item]
            )
            )
        }
        
        return personList
    }
}
