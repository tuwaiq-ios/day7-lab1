//
//  ViewController.swift
//  lab7-emoji
//
//  Created by  HANAN ASIRI on 27/02/1443 AH.
//
import Foundation
import UIKit





class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    let emojis = ["👾","😎" ,"👻" , "🤓"]
    
    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! Hanancell
        
        cell.label1.text = emojis[indexPath.row]
        
        if ( indexPath.row % 2 == 0) {
            cell.label1.backgroundColor = UIColor.blue
        } else {
            cell.label1.backgroundColor = UIColor.red
        }
        
        return cell
    }
    // Do any additional setup after loading the view.
}

class Hanancell : UITableViewCell {
    
    @IBOutlet weak var label1: UILabel!
    
    
    
}
