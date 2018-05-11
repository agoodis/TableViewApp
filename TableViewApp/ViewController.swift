//
//  ViewController.swift
//  TableViewApp
//
//  Created by agoodis on 10.05.2018.
//  Copyright © 2018 agoodis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let restarauntNames = ["Ogonek", "Banasi", "Milk", "Cow", "Kebab", "Marusia", "Classic", "Ben&Bon", "KidlLands", "Momy", "Clark's", "Level UP", "Sons", "Beef", "Beer House"]
    
    let restaurantImages = ["ogonek.jpg", "elu.jpg", "bonsai.jpg", "morris.jpg", "ogonek.jpg", "elu.jpg", "bonsai.jpg", "morris.jpg", "ogonek.jpg", "elu.jpg", "bonsai.jpg", "morris.jpg", "ogonek.jpg", "elu.jpg", "bonsai.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restarauntNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
    
        cell?.textLabel?.text = restarauntNames[indexPath.row]
        cell?.imageView?.image = UIImage(named: restaurantImages[indexPath.row])
        
        return cell!
    }
    
}

