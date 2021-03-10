import UIKit

let numbers = [1, 3, 5, 7, 9]

//let names = ["sato", "suzuki", "tanaka"]
//
//var emptyDoubles: [Double] = []
//
//var emptyFloats: Array<Float> = Array()
//
//let zeros = Array(repeating: 0, count: 10)


// 配列の要素にアクセスする

//let names = ["sato", "suzuki", "tanaka"]
//for name in names {
//    print(name)
//}

//let names = ["sato", "suzuki", "tanaka"]
//if names.isEmpty {
//    print("empty")
//} else {
//    print("count: \(names.count)")
//}

//let numbers = [1, 3, 5, 7, 9]
//if let firstElement = numbers.first, let lastElement = numbers.last {
//    print(firstElement, lastElement)
//}

//let numbers = [1, 3, 5, 7, 9]
//print(numbers[0], numbers[3])


// 要素の追加と削除

//var names = ["sato", "suzuki", "tanaka"]
//names.append("kobayashi")
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
//if let i = names.firstIndex(of: "suzuki") {
//    names[i] = "******"
//    print(names)
//}


// 配列のコピーを変更する

//var numbers = [1, 2, 3, 4, 5]
//var copy = numbers
//numbers[0] = 999
//print(numbers)
//print(copy)


//class Reference {
//    var value: Int
//    var name: String
//
//    init(_ value: Int, _ name: String) {
//        self.value = value
//        self.name = name
//    }
//}
//
//var numbers1 = [Reference(10, "OldA"), Reference(10, "OldB")]
//var numbers2 = numbers1
//
//numbers1[0].value = 100
//// numbers1[0] と numbers2[0] は同じインスタンスを指している
//print(numbers2[0].value, numbers2[0].name)
//
//numbers1[0] = Reference(10, "NewC")
//// numbers1[0] は新しいインスタンスを指している
//print(numbers1[0].value, numbers1[0].name)
//// numbers2[0] は古いインスタンスを指している
//print(numbers2[0].value, numbers2[0].name)
