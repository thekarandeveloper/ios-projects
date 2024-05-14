import UIKit

var greeting: [Int] = [1,3,5,-3,-129]

if greeting.contains(5){
    print("There is a 5")
}


var myArray = [Int](repeating: 10, count: 5)

let count = myArray.count

if myArray.isEmpty{
    print("Yes it is Empty")
}


var names = ["Karan"]
names.append("Aryan")

names += ["Shweta", "Aman", "Arpita"]

names.insert("newkaran", at: 3)

let dan = names.removeLast()
print(names)
print(dan)

for (index, elements) in greeting(){
    print("this is \(index) of \(elements)")
}
