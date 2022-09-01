//
//  ViewController.swift
//  VowelTester
//
//  Created by Pokuri,Parimalla on 8/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterText: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonClicked(_ sender: UIButton) {
        //Read the text from the text field and assign it to a local variable
        var text = enterText.text!;
        //check the text has vowel or not
        if(text.contains("a") ||
           text.contains("e") ||
           text.contains("i") ||
           text.contains("o") ||
           text.contains("u")){
            displayLabel.text = "The text has vowel"
        }
        else{
            displayLabel.text = "The text has no vowel"
        }
        
    }
    
}

