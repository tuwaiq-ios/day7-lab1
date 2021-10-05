//
//  TableViewController.swift
//  Lab6 Tasks
//
//  Created by Eth Os on 26/02/1443 AH.
//

import Foundation
import UIKit

class TableViewController : UITableViewController {
    let arr = ["😁","🧩","🐙","💻","👾","💡"]
    var cellColors = [UIColor.systemCyan, UIColor.systemPink]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TabelCell", for: indexPath) as! TabelCell
        let data = arr[(indexPath as NSIndexPath).row]
       
//        let backgroundView = UIView()
//        backgroundView.backgroundColor = UIColor.red
//        cell.selectedBackgroundView = backgroundView
//
        cell.emojiLabel.text = "\(data)"
        return cell
    }
    
//    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//        cell.contentView.backgroundColor = UIColor(named: cellColors[indexPath.row % cellColors.count])
//    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        let alert = UIAlertController(title: "This Is Not My First App ", message: "but you welcome for sure.", preferredStyle: .alert )
        alert.addAction(UIAlertAction (title: "OK", style: .default, handler: { _ in
            return
        }))
        self.present(alert, animated: true, completion: nil)
        return
        
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if (indexPath.row % 2 == 0){
            cell.backgroundColor = UIColor.systemYellow
        }else {
            cell.backgroundColor = UIColor.systemRed
        }
    }
    
    
}
