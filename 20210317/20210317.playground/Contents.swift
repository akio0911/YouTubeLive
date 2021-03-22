import UIKit

// 0: normal, 1: slow, 2: fast
//func execute(mode: Int) {
//    // ...
//}

let nomalMode = 0
let slowMode = 1
let fastMode = 2

enum Mode {
    case normal
    case slow
    case fast
}

func execute(mode: Mode) {
}

execute(mode: .fast)
execute(mode: .slow)
//execute(mode: .special)


//1 + 1
//"A" + "B"
//[1,2,3] + [4,5,6]
//
//1 / 1
//"A" / "B"
//[1,2,3] / [4,5,6]

//let numbers = [1,2,3]
//print(numbers[0])
//print(numbers[10])

func getNumger(index: Int) -> Int? {
    let numbers = [111,222,333]

    guard numbers.indices.contains(index) else {
        return nil
    }

    return numbers[index]

//    print(numbers)
//    print(Array(numbers.enumerated()))
//    print(numbers
//            .enumerated()
//            .first(where: { $0.offset == index }))

    return numbers
        .enumerated()
        .first(where: { $0.offset == index })?.element
}

getNumger(index: 0)
getNumger(index: 1)
getNumger(index: 2)
getNumger(index: 3)
