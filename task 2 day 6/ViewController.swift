//
//  ViewController.swift
//  task 2 day 6
//
//  Created by Maram Al shahrani on 27/02/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
   let emojis = ["👾","👻","🤓","🤖"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = veiw.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! customcell
        
   
        
        
        
        cell.label.text = emojis [indexPath.row]
        
        if indexPath.row % 2 == 0{
            
            cell.label.backgroundColor = UIColor.red
        }
            else
            {
                cell.label.backgroundColor = UIColor.orange
    
            }
        
        return cell
    }
    
    @IBOutlet weak var veiw: UITableView!
    

   
    override func viewDidLoad() {
        super.viewDidLoad()
         
        veiw.delegate=self
        veiw.dataSource=self
    }


}

