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
        var happy = 0
        var sad = 0
        
        // Counting how many happy or sad emojis there are in the text
        for character in phraseInput {
            
            switch character {
            case "😃" ,"😊","🙂", "😄":
                happy += 1
            case "☹", "🙁", "😕", "😔":
                sad += 1
            default:
                break
            }
            
            
        }
        
        // 3. OUTPUT
        // Decide the mood of the message
        if happy > sad  {
            labelResult.text = "happy"
        } else if sad > happy {
            labelResult.text = "sad"
        }  else {
            labelResult.text = "unsure"
        
            }
        }
}
