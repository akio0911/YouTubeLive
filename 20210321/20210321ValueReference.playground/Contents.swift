import UIKit


// Int を代入するとコピーされる
// Int は struct

var a: Int = 10
var copyOfA: Int = a
a // 10
copyOfA // 10
a = 20
copyOfA // 10


// メソッドに渡した時もコピーされる

var b: Int = 10
func plusOne(_ copy: Int) -> Int {
    // Left side of mutating operator isn't mutable: 'copy' is a 'let' constant
    // copy += 1

    return copy + 1
}
plusOne(b)
b


// 独自に作った struct もコピーされる

struct Person {
    var age: Int
}

var sato = Person(age: 20)
var copyOfSato = sato

sato.age // 20
sato.age += 1
sato.age // 21

copyOfSato.age // 20


// クラスはコピーされない

class Counter {
    var count: Int = 0
}

var counter = Counter()
counter.count // 0

var referenceToCounter = counter
referenceToCounter.count // 0

counter.count += 1

counter.count // 1
referenceToCounter.count // 1

func plusOne(_ counter: Counter) {
    counter.count += 1
}

plusOne(counter)

counter.count // 2
referenceToCounter.count // 2
