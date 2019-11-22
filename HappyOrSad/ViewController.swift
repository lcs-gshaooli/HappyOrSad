//
//  ViewController.swift
//  HappyOrSad
//
//  Created by Gabriela Shaooli on 2019-11-18.
//  Copyright © 2019 Gabriela Shaooli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Mark: Properties
    // Outlet
    @IBOutlet weak var enterMessage: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    // MARK: Methods
    // Functions (make things happen)
    
    // Runs as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func analyze(_ sender: Any) {
        
        // 1. INPUT
        labelResult.text = ""
        
        // Guard against no imput
        guard let phraseInput = enterMessage.text, phraseInput.count > 0 else {
            labelResult.text = "Please enter your text."
            return
        }
        
        // Make sure the input in not too long
        if phraseInput.count > 255  {
            labelResult.text = "Please enter a phrase that is no more than 255 characters"
            return
        }
        // 2. PROCCES
        print (phraseInput)
        
        // Create varibales
        var Happy = 0
        var sad = 0
    }
    
    for singleCharcter in phraseInput { 
    
    switch single character {
    case "😃" ,"😊","🙂", "😄":
    emotion += 1
    case  "☹", "🙁", "😕", "😔":
    default
    outputResault.text = "None"
    
    }
    if singleCharcter > 0 {
    outputResult.text = "happy"
    } if singleCharcter > 0
    outputResult.text = "sad"
    if singleCharcter == 0 {
    outputResult = "none"
    }
}
}
