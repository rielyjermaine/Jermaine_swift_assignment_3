import Foundation

// ship superclass
class Ship {
    let name: String
    let year: Int
    let countryOfOrigin: String
    
    init(name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
}

// cruise subclass
class CruiseShip: Ship {
    let maxCapacity: Int
    let oceanOfOperation: String
    var currentPassengerCount: Int = 0
    
    init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String) {
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addPassenger() {
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1
            print("Passenger added to \(self.name). Current passenger count: \(currentPassengerCount)")
        } else {
            print("\(self.name) at max capacity. Cannot add more passengers.")
        }
    }
    
    func printPassengerCount() {
        print("Current passenger count on \(self.name): \(currentPassengerCount)")
    }
}

// Cargo subclass
class CargoShip: Ship {
    let maxCargoCapacity: Int
    var currentCargoCount: Int = 0
    let isInternational: Bool
    
    init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Int, isInternational: Bool) {
        self.maxCargoCapacity = maxCargoCapacity
        self.isInternational = isInternational
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addCargo() {
        if currentCargoCount < maxCargoCapacity {
            currentCargoCount += 1
            print("Cargo added. Current cargo count: \(currentCargoCount)")
        } else {
            print("Cargo hold at max capacity. Cannot add more cargo.")
        }
    }
    
    func printCargoCount() {
        print("Current cargo count: \(currentCargoCount)")
    }
}

// PirateShip subclass
class PirateShip: Ship {
    let maxTreasureCapacity: Int
    var currentTreasureCount: Int = 0
    let numberOfCannons: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Int, numberOfCannons: Int) {
        self.maxTreasureCapacity = maxTreasureCapacity
        self.numberOfCannons = numberOfCannons
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addTreasure() {
        if currentTreasureCount < maxTreasureCapacity {
            currentTreasureCount += 1
            print("Treasure added. Current treasure count: \(currentTreasureCount)")
        } else {
            print("Treasure hold at max capacity. Cannot add more treasure.")
        }
    }
    
    func printTreasureCount() {
        print("Current treasure count: \(currentTreasureCount)")
    }
}


let cruiseShip = CruiseShip(name: "Royal Caribbean", year: 2005, countryOfOrigin: "USA", maxCapacity: 2, oceanOfOperation: "Atlantic")

// Add passengers
cruiseShip.addPassenger() // Add a passenger
cruiseShip.addPassenger() // Add another passenger
cruiseShip.addPassenger() // Try adding another passenger beyond max capacity

let cargoShip = CargoShip(name: "Maersk", year: 2010, countryOfOrigin: "Denmark", maxCargoCapacity: 1, isInternational: true)

// Add cargo
cargoShip.addCargo() // Add cargo
cargoShip.addCargo() // Try adding more cargo beyond max capacity

let pirateShip = PirateShip(name: "Black Pearl", year: 1750, countryOfOrigin: "Unknown", maxTreasureCapacity: 1, numberOfCannons: 30)

// Add treasure
pirateShip.addTreasure() // Add treasure
pirateShip.addTreasure() // Try adding more treasure beyond max capacity
