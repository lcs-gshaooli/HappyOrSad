//
//  ViewController.swift
//  HappyOrSad
//
//  Created by Gabriela Shaooli on 2019-11-18.
//  Copyright © 2019 Gabriela Shaooli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterMessage: UITextField!

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    }
    
    @IBAction func analyze(_ sender: Any) {
        
        guard let enterMessageAsString = enterMessage.text, enterMessageAsString != ""
        else {
            label.text = "Please enter your text."
            return
            
    }
    

    }
}
