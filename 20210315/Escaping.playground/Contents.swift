import UIKit

//func run1(closure: () -> Void) {
//    closure()
//}
//
//run1(closure: {
//    print("closure")
//})

//struct Runner {
//    let closure: () -> Void
//
//    func run() {
//        closure()
//    }
//}
//
//Runner(closure: {
//    print("closure")
//}).run()

func run3(closure: @escaping () -> Void) {
    DispatchQueue.main.async {
        closure()
    }
}
run3(closure: {
    print("closure")
})
