//
//  ViewController.swift
//  Discount
//
//  Created by Pokuri,Parimalla on 9/13/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AmountOutlet: UITextField!
    
    @IBOutlet weak var DiscountOutlet: UITextField!
    
    @IBOutlet weak var ResultLabelOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func CalcDiscount(_ sender: UIButton) {
        //Read the data and convert to double
        var enteredAmount = Double(AmountOutlet.text!)
        var DiscRate = Double(DiscountOutlet.text!)
        var priceAfterDiscount = enteredAmount! - (enteredAmount!*DiscRate!/100)
        ResultLabelOutlet.text = "Price after discount is $ \(priceAfterDiscount)"
    }
}

