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
    let telephoneNumber: String
    let email: String
    
    
    static func toGetPerson() -> [Person] {
        var personList: [Person] = []
        let shuffledName = DataManager.listOfNames.shuffled()
        let shuffledSurname = DataManager.listOfSurnames.shuffled()
        let shuffledNumber = DataManager.telephoneNumbers.shuffled()
        let shuffledEmail = DataManager.listOfEmails.shuffled()
        
        for item in 0...shuffledName.count - 1 {
            personList.append(Person(
                name: shuffledName[item],
                surname: shuffledSurname[item],
                fullName: "\(shuffledName[item]) \(shuffledSurname[item])",
                telephoneNumber: shuffledNumber[item],
                email: shuffledEmail[item]
            )
            )
        }
        return personList
    }
    
}
