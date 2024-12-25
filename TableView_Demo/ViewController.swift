//
//  ViewController.swift
//  TableView_Demo
//
//  Created by Mac on 25/12/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var array1 = ["AAAA","BBBB","CCCC","DDDD","EEEE","FFFF","GGGG"]
    var array2 = ["aaaa","bbbb","cccc","dddd","eeee","ffff","gggg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = array1 [indexPath.row]
        cell?.detailTextLabel?.text = array2[indexPath.row]
        
        return cell!
    
    }

}


