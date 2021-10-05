//
//  ViewController.swift
//  task 2 day 6
//
//  Created by Maram Al shahrani on 27/02/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    let emojis = ["👾","👻","🤓","🤖"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! customcell
        
        cell.label.text = emojis [indexPath.row]
        
        if indexPath.row % 2 == 0{
            
            cell.label.backgroundColor = UIColor.red
        } else {
            cell.label.backgroundColor = UIColor.orange
            
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let AlertController = UIAlertController (
            
            title: "welcome to my first app", message:"helo world", preferredStyle: UIAlertController.Style.alert)
        
        AlertController.addAction(
            UIAlertAction(
                title: "ok😎", style: UIAlertAction.Style.default, handler: { ACTION in
                    print ("Hi")
                    
                })
        )
        present(AlertController, animated: true, completion: nil)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate=self
        table.dataSource=self
    }
}
