//
//  ViewController.swift
//  day6-2
//
//  Created by HANAN on 27/02/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate=self
        tableview.dataSource=self
    }
    let emg = ["👾","👻","🤓","🤖"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emg.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "1234", for: indexPath) as! customcell
        
        if indexPath.row % 2 == 0 {
            cell.label.backgroundColor = UIColor.red }
        
        else {
            cell.label.backgroundColor = UIColor.yellow
        }
        
        cell.label.text = emg [indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let alerte = UIAlertController(
            title: "welcome to my first app\(emg[indexPath.row])",
            message: "Hello World",
            preferredStyle:.alert)
        
        
        alerte.addAction(UIAlertAction(
            title: "cancel",
            style:.default ,
            handler: { action in
                print ("BAY") }))
        
        
        present(alerte, animated: true , completion: nil)
    }
}

class customcell : UITableViewCell
{
    
    @IBOutlet weak var label: UILabel!
    
}
