//
//  ViewController.swift
//  img
//
//  Created by Dr. Fahad on 27/02/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate ,UITableViewDataSource {
    
    @IBOutlet weak var tablev: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        tablev.delegate = self
        tablev.dataSource = self
    }
    
    let emg = ["👾","👻","🤓","🤖"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emg.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"123" , for: indexPath ) as! customcell
        if indexPath.row % 2 == 0 {
            cell.label1.backgroundColor = UIColor.red }
        else {
            cell.label1.backgroundColor = UIColor.yellow
        }
        cell.label1.text = emg[indexPath.row]
        return cell
        
    }
    
}
class customcell : UITableViewCell {
    
    @IBOutlet weak var label1: UILabel!
    
}


