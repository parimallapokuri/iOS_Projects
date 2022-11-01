//
//  ResultViewController.swift
//  tableViewDemo
//
//  Created by Pokuri,Parimalla on 11/1/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    var product : Product?
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayLabel.text = "The Product name is \((product?.prodName)!) is of \((product?.prodCategory)!) Category."
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
