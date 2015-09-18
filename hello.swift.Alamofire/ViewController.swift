//
//  ViewController.swift
//  hello.swift.Alamofire
//
//  Created by Naohiro OHTA on 9/18/15.
//  Copyright © 2015 Naohiro OHTA. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        helloAlamofire()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func helloAlamofire() {
        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
            .responseJSON { _, _, result in
                print(NSDate(), result)
                debugPrint(NSDate(), result)
        }
    }
    
}

