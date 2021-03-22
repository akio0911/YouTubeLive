import UIKit

// Optional Binding
func f1(value: Int?) -> String {
    if let value = value {
        return String(value)
    } else {
        return "nil"
    }
}
f1(value: 10) // "10"
f1(value: nil) // "nil"


// Early Exit
func f2(value: Int?) -> String {
    guard let value = value else {
        return "nil"
    }

    return String(value)
}
f2(value: 10)
f2(value: nil)


// Forced unwrapping
func f3(value: Int?) -> String {
    return String(value!)
}
f3(value: 10) // "10"
//f3(value: nil) // crash
