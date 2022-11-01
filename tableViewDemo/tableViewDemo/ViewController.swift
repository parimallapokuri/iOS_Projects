//
//  ViewController.swift
//  tableViewDemo
//
//  Created by Pokuri,Parimalla on 11/1/22.
//

import UIKit
class Product{
    var prodName : String?
    var prodCategory : String?
    init(prodName: String, prodCategory: String){
        self.prodName = prodName
        self.prodCategory = prodCategory
    }
}
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        cell.textLabel?.text = products[indexPath.row].prodName
        
        return cell;
    }
    

    @IBOutlet weak var tableView: UITableView!
    var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        let p1 = Product(prodName: "MacBookAir", prodCategory: "Laptop")
        products.append(p1)
        let p2 = Product(prodName: "iPhone", prodCategory: "cellPhone")
        products.append(p2)
        let p3 = Product(prodName: "Samsung", prodCategory: "CellPhone")
        products.append(p3)
        let p4 = Product(prodName: "HP", prodCategory: "Laptop")
        products.append(p4)
        let p5 = Product(prodName: "Dell", prodCategory: "Laptop")
        products.append(p5)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "detailsSegue"{
            let destination = segue.destination as! ResultViewController
            destination.product = products[(tableView.indexPathForSelectedRow?.row)!]
        }
    }

}

