//
//  ViewController.swift
//  tableviewsana
//
//  Created by Me .. on 27/02/1443 AH.
//

import UIKit

let emojis = ["👾","👻","🤓","🤖"]

class ViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {
    
  @IBOutlet weak var table: UITableView!
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return emojis.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
      
    let cell = tableView.dequeueReusableCell(withIdentifier:"123",for: indexPath) as! tableCell
      
    cell.lablecell.text = emojis[indexPath.row]
      if (indexPath.row % 2 == 0) {
          cell.lablecell.backgroundColor = UIColor.red
      } else { cell.lablecell.backgroundColor = UIColor.yellow
          
      }
    return cell
  }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        
        let Alertcontroller = UIAlertController(
            title: "Hello To My First App\(emoji)",
            message: "Hello World",
            preferredStyle: UIAlertController.Style.alert)
    
    
       Alertcontroller.addAction(
        UIAlertAction (
            title: "OK",
            style: UIAlertAction.Style.default,
            handler: { action in
            print ("done")
        })
       )
    
    
     present(Alertcontroller , animated: true, completion: nil)
        }
    
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
    table.delegate = self
    table.dataSource = self
  }
}

class tableCell:UITableViewCell {
 
    @IBOutlet weak var lablecell: UILabel!
}









