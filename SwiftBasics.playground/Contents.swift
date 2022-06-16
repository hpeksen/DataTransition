import UIKit
import Foundation
//Week1 Homework Practise

//1-The program that prints the sum of the elements in this array or the multiplication result,
//depending on whether the first element of the defined array is an even number or not.

var myNumbers = [3,5,6,7,8,9,6]
var sumNumbers = 0
var multiplicationResult = 1
if(myNumbers[0] % 2 == 0){
    for index in myNumbers {
        sumNumbers += index
    }
}
else{
    for index in myNumbers {
        multiplicationResult *= index
    }
}
if(sumNumbers != 0){
    print("Given array's sum result is: \(sumNumbers)")
}else{
    print("Given array's multiplication result is: \(multiplicationResult)")
}


//2-Program that operates according to the operator given using switch case
var myOperator = "/"
var myResult: Int = 0
var myArray: [Int] = []
myArray.append(3)
myArray.append(5)
myArray.append(8)
myArray.insert(9, at: 2)
myArray.append(2)
myArray.append(contentsOf: [12,11,42])
myArray.insert(1, at: 0)
myArray.remove(at: 2)
switch myOperator {
case "+":
    for item in myArray{
        myResult += item
    }
    print("Sum result is \(myResult)")
case "-":
    for item in myArray{
        myResult -= item
    }
    print("Subtraction result is \(myResult)")
case "*":
    for item in myArray{
        myResult *= item
    }
    print("Multiplication result is \(myResult)")
case "/":
    for item in myArray{
        if(item != 0){
            myResult /= item
        }
    }
    print("Division result is \(myResult)")
default:
    print("Operatör is invalid")
}

//3-Program that collects the population of each region in the created Region city and population dictionary

var population: [String : [String:Int]] =
["Marmara":
    ["İstanbul":20,"Bursa":10,"Çanakkale": 15],
"Ege":
    ["İzmir":18,"Muğla":7,"Aydın": 2],
 "Akdeniz":
    ["Antalya":9,"Adana":2]]
 
var marmara : Int = 0
for item in population.keys {
    if (item == "Marmara"){
        for items in population["Marmara"]!.values{
            marmara += items
            }
        print("Population's of Marmara: \(marmara)")
        }
    }

//4- Function example that find the factorial of a given number
func factorial (_ givenNumber: Int) -> Int{
    while givenNumber != 1{
        return givenNumber * factorial(givenNumber-1)
    }
    return 1
}
  print("Factorial of 6 is: \(factorial(6))")

//5- Program showing the amount of raise made according to the information in
//the created working class by using class, enum, function and optional value

enum Currency{
    case dolar
    case euro
    case pouns

}
class Employee{
    var name : String?
    var salary: Int?
    var salaryType: Currency?
    
    init (_ name: String,_ salary: Int, _ salaryType: Currency){
        self.name = name
        self.salary = salary
        self.salaryType = salaryType
    }
    init(_ salary: Int, _ salaryType: Currency){
        self.salary = salary
        self.salaryType = salaryType
    }
    func getName () -> String {
        if let nName = name {
            return nName
        }else{
            return "INVALID EMPLOYEE"
        }
    }
}
func calculateSalary (_ employee: Employee) -> Int{
    switch (employee.salaryType) {
    case .euro:
        return employee.salary!*17
    case .dolar:
        return employee.salary!*15
    case .pouns:
        return employee.salary!*20
    case .none:
        return employee.salary!
    }
}
var emp1 = Employee("Ali",3000,Currency.dolar)
var emp2 = Employee("Veli",4000,Currency.euro)
var emp3 = Employee(1500,Currency.pouns)

print("\(emp1.getName())'s new interest is: \(calculateSalary(emp1))")
print("\(emp2.getName())'s new interest is: \(calculateSalary(emp2))")
print("\(emp3.getName())'s new interest is: \(calculateSalary(emp3))")

//6- Struct Example
struct Student {
    var name: String?
    var listOfClasses: [String]?
    var cgpa: Double?
    
    mutating func setName (_ name:String) {
        self.name = name
    }
    
    func getInfo ()  {
        print(name!, cgpa!, listOfClasses!)
    }
}

var st1 = Student()
st1.name = "Ahmet"
st1.listOfClasses = ["Math", "History", "Turkish"]
st1.cgpa = 3.45

st1.setName("Ali")
st1.getInfo()

//7- Set Example

var myStringArray = ["My","name","is","Hakan","is","name"]
var myStringSet = Set(myStringArray)
if(myStringArray.count == myStringSet.count){
    print("My sentence occur unique words")
}else{
    print("My sentence include more than one same words")
}










