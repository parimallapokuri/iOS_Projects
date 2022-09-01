//
//  ViewController.swift
//  Hello2App
//
//  Created by Pokuri,Parimalla on 8/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonClicked(_ sender: UIButton) {
        //Read the tex from text field
        // ! is to unwrap the text
        var name = nameOutlet.text!;
        //Assign the data to displayLabel
        displayLabel.text = "Hello, \(name)...!!!";
        
    }
    
}

