import UIKit

// イニシャライザ
// インスタンス生成する時、初期化のために使用する

// 独自に定義が可能（カスタムイニシャライザ）

// カスタムイニシャライザを定義していない場合、
// 自動的にシンプルなイニシャライザが利用可能となる

//struct Person {
//    // 全てのプロパティに初期値が与えられている
//    var name: String = "sato"
//    var age: Int = 30
//}
//
//// 既定イニシャライザ
//// (default initializer)
//// 全てのプロパティに初期値が与えられている場合に利用できる
//let person1 = Person()
//person1.name // "sato"
//person1.age // 30
//
//// 全項目イニシャライザ
//// (memberwise initializer)
//let person2 = Person(name: "suzuki", age: 20)
//person2.name // "suzuki"
//person2.age // 20




//struct Person {
//    // 全てのプロパティに初期値が与えられていない
//    var name: String
//    var age: Int
//}
//
//// 全てのプロパティに初期値が与えられていない場合
//// 既定イニシャライザは使えない
////let person3 = Person()
//
//// 全項目イニシャライザ
//let person4 = Person(name: "tanaka", age: 40)
//person4.name // "tanaka"
//person4.age // 40

