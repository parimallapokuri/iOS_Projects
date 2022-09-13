//
//  ViewController.swift
//  DisplayFirst4Char
//
//  Created by Pokuri,Parimalla on 9/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DisplayName: UITextField!
    
    @IBOutlet weak var Display4Char: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitButtonClicked(_ sender: UIButton) {
        var name = DisplayName.text!;
        if(name.count < 4){
            Display4Char.text = "Enter valid String Contains atleat 4 characters";
        }
        else{
            var fourChar = name.prefix(4)
            Display4Char.text = "\(fourChar)"
            
        }
    }
    
}

