//
//  ViewController.swift
//  ConsoleApp
//
//  Created by akio0911youtube on 2021/03/19.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let a = 1
        let b = 2
        var c = a + b
        c = 999

        print(a,b,c)

        let size = view.bounds.size

        let location = CLLocationCoordinate2D(
            latitude: 35.6809591,
            longitude: 139.7673068
        )

        let url = URL(string: "https://yahoo.co.jp")!

        let nsurl = url as NSURL

        let color = UIColor.cyan

        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: 10, y: 20))
        path.addLine(to: CGPoint(x: 50, y: 0))
        path.addLine(to: CGPoint(x: 99, y: 99))


        print("####", 111)
        print("%%%%", 111)
        print("****", 111)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        print(#function)
    }

}

