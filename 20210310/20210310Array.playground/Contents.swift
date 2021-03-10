import UIKit

//let numbers = [1, 3, 5, 7, 9]
//
//let names = ["sato", "suzuki", "tanaka"]
//
//var emptyDoubles: [Double] = []
//
//var emptyFloats: Array<Float> = Array()
//
//var nums: [Int] = Array()
//
//let zeros = Array(repeating: 0, count: 10)
//let empties = Array(repeating: "", count: 10)

// 配列の要素にアクセスする

//let names = ["sato", "suzuki", "tanaka"]
//for name in names {
//    print(name)
//}

//let names = ["sato", "suzuki", "tanaka"]
//let names: [String] = []
//if names.isEmpty {
//    print("empty")
//} else {
//    print("count: \(names.count)")
//}

//let numbers = [1, 3, 5, 7, 9]
//let numbers = [1]
//let numbers: [Int] = []
//if let firstElement = numbers.first,
//   let lastElement = numbers.last {
//
//    print(firstElement, lastElement)
//}
//print(numbers.first, numbers.last)

//let numbers = [1, 3, 5, 7, 9]
//print(numbers[0], numbers[3])


// 要素の追加と削除

//var names = ["sato", "suzuki", "tanaka"]
//names.append("kobayashi")
//print(names)
//names.append(contentsOf: ["ito", "takahashi"])
//print(names)

//var names = ["sato", "suzuki", "tanaka"]
//names.insert("ito", at: 2)
//print(names)

//var names = ["sato", "suzuki", "tanaka"]
//names.remove(at: 0)
//print(names)

//var names = ["sato", "suzuki", "tanaka"]
//names.removeLast()
//print(names)

//var names = ["sato", "suzuki", "tanaka"]
//print(names.firstIndex(of: "suzuki"))
//print(names.firstIndex(of: "tanaka"))
//print(names.firstIndex(of: "ito"))
//if let i = names.firstIndex(of: "suzuki") {
//    names[i] = "******"
//    print(names)
//}


// 配列のコピーを変更する

//var numbers = [1, 2, 3, 4, 5]
//var copy = numbers // copy
/////numbers[0] = 999
//copy[0] = 999
//print(numbers)
//print(copy)


class Reference: CustomStringConvertible {
    var value: Int
    var name: String

    init(_ value: Int, _ name: String) {
        self.value = value
        self.name = name
    }

    var description: String {
        "(\(value):\(name))"
    }
}

var numbers1 = [Reference(10, "OldA"), Reference(10, "OldB")]
print("numbers1", numbers1)
var numbers2 = numbers1
print("numbers2", numbers2)

numbers1[0].value = 100
numbers2[1].value = 999
print("numbers1", numbers1)
print("numbers2", numbers2)
//// numbers1[0] と numbers2[0] は同じインスタンスを指している
//print(numbers2[0].value, numbers2[0].name)
//
numbers1[0] = Reference(10, "NewC")
print("numbers1", numbers1)
print("numbers2", numbers2)
//// numbers1[0] は新しいインスタンスを指している
//print(numbers1[0].value, numbers1[0].name)
//// numbers2[0] は古いインスタンスを指している
//print(numbers2[0].value, numbers2[0].name)
