//
//  ViewController.swift
//  HelloWorld
//
//  Created by a2big on 2018. 5. 22..
//  Copyright © 2018년 com.a2big. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sayHello(_ sender: Any) {
        myLabel.text = "안녕하세요!!"
    }
    
}

