//
//  ViewController.swift
//  Day6.task2.2
//
//  Created by mohammed Al-qhtani on 27/02/1443 AH.
//

import UIKit



class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    
    
    @IBOutlet weak var table: UITableView!
    
    
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    let emojis = ["😎","👾", "👻","🤓"]
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! ViewTableCell
        cell.lable.text = emojis[indexPath.row]
        if indexPath.row % 2 == 0  { cell.backgroundColor = UIColor.red
        }
        else { cell.backgroundColor = UIColor.yellow}
        return cell
        
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        table.dataSource=self
        table.delegate=self
        
    }
}

class ViewTableCell : UITableViewCell {
    
    @IBOutlet weak var lable: UILabel!
}






























