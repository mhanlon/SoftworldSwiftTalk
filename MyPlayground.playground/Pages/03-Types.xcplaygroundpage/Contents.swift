//: [Previous](@previous)

/*:
 Swift has a number of types, ways of organizing information, with lots of different features.
 
 To go in-depth, you can check out the [Swift Programming Language Guide](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
 */
import Foundation

struct Person {
    /// There is a differentiation between constants and variables
    let firstName: String
    let lastName: String
    var age: Int
    
    /// Computed properties
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    /// We have labels...
    func eat(food: Food) {
        print("Yum, \(food.emoji)!")
    }
    
    /// We can have external and internal labels for better readability
    func eat(with otherPerson: Person) {
        print("\(self.firstName) is dining with \(otherPerson.fullName)")
    }
    
}

class Animal {
    let name: String
    init(name: String) {
        self.name = name
    }
    func makeNoise() {}

    func eat(food: Food) {
        print("Yum, \(food.emoji)!")
    }
}

class Dog: Animal {
    override func makeNoise() {
        print("Woof!")
    }
}

class Fish: Animal {
    override func makeNoise() {
        print("blub, blub")
    }
}

enum Food {
    case hamburger
    case salmon
    case broccoli
    case candy
    
    var emoji: String {
        switch self {
        case .hamburger:
            return "🍔"
        case .salmon:
            return "🍣"
        case .broccoli:
            return "🥦"
        case .candy:
            return "🍬"
        }
    }
}

var person = Person(firstName: "William", lastName: "Morgan", age: 35)
var myFriend = person

let dog = Dog(name: "Waffles")
let fish = Fish(name: "Igor")
dog.makeNoise()
fish.makeNoise()
