import UIKit

var greeting = "Hello, playground"

struct isdpMarks{
    
    let designThinkingMarks: Double
    var uiUxDesignMarks : Double
    var swiftProgrammingMarks : Double
    var projectMarks: Double
    
    func avgMarks() -> Double{
        ( designThinkingMarks + uiUxDesignMarks + swiftProgrammingMarks + projectMarks)/4
    }
    mutating func updateMarks(){
        designThinkingMarks += 1
    }
    
}

var student1 = isdpMarks(designThinkingMarks: 65, uiUxDesignMarks: 78, swiftProgrammingMarks: 87, projectMarks: 99.9)

print(student1.avgMarks())

