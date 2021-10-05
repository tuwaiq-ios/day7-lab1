//
//  viewcontroller class.swift
//  emoji day7 taske2
//
//  Created by MacBook on 27/02/1443 AH.
//

import UIKit

class viewcontrollerClass : UIViewController,UITableViewDataSource,UITableViewDelegate{
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    
    var emojis = ["🌹","💐","🌸","🌼"]
    
    
    @IBOutlet weak var tableview: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableview.dequeueReusableCell(withIdentifier: "123", for:indexPath) as! custemcell
        
        
        cell.label.text = emojis [indexPath.row]
        
        if indexPath.row % 2 == 0 {
            cell.label.backgroundColor = UIColor.purple
        }else {
            cell.label.backgroundColor = UIColor.orange
            
        }
        return cell
    }
    
    
}


class custemcell : UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    
}
