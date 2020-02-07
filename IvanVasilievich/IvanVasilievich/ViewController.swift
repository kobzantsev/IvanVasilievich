//
//  ViewController.swift
//  IvanVasilievich
//
//  Created by maxxx on 07.02.2020.
//  Copyright © 2020 maxxx. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SplityLine(string: "VasyaPupkin")
        // Do any additional setup after loading the view.
    }
 
    func SplityLine(string: String){
        let regexp: NSRegularExpression = try! NSRegularExpression.init(pattern: "([a-z])([A-Z])", options: [])
        let range = NSMakeRange(0, string.count)
        let newString = regexp.stringByReplacingMatches(in: string, options: [], range: range, withTemplate: "$1 $2")
        let array: Array = newString.components(separatedBy: " ")
        print(array.joined(separator: " "))
    }
}

