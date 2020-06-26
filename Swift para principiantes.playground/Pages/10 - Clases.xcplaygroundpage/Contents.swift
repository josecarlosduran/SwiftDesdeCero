import Foundation

// Clases

// Definición de una clase

class Programmer {
    
    private let name: String
    private let age: Int
    private let languages: [Language]
    var friends: [Programmer]?
    
    enum Language : String{
        case swift = "Swift"
        case kotlin = "Kotlin"
        case java = "Java"
        case javascript = "Javascript"
    }
    
    init(name: String, age: Int, languages: [Language]) {
        self.name = name
        self.age = age
        self.languages = languages
    }
    
    func code() {
        print ("Estoy programando:")
        for language in languages
        {
            print("\(language.self.rawValue)")
        }
       
    }
    
    func sayHello() {
        print ("Hello I'm \(self.name)  with \(self.age) old.")
    }
    
    func printFriends(){
        print ("My Friends are:")
        
        if let myFriends = self.friends{
            for friend in myFriends {
                print("\(friend.getName())")
            }
        }
        
    }
    
    func getName() -> String {
        return self.name
    }
    
    
    
}

// Instancia de una clase

let brais = Programmer(name: "Brais Moure", age: 32, languages: [.swift, .kotlin])
let sara = Programmer(name: "Sara", age: 40, languages: [.java])

brais.friends = [sara]
brais.sayHello()
brais.code()
brais.printFriends()

print("\n")
sara.sayHello()
sara.code()
sara.printFriends()




