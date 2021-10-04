//
//  Code.swift
//  Day7
//
//  Created by Fawaz on 27/02/1443 AH.
//

import Foundation
import UIKit

let emojis = ["👾", "👻", "🤓", "🤖"]

class FawazViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  
  @IBOutlet weak var TableView: UITableView!
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return emojis.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let FawazCell = tableView.dequeueReusableCell(withIdentifier: "123" , for: indexPath) as! FawazTableCell
    FawazCell.Lable.text = emojis [indexPath.row]
    
    if indexPath.row % 2 == 0 {
      FawazCell.Lable.backgroundColor = UIColor.black
    }
      else{
        FawazCell.Lable.backgroundColor = UIColor.red
      }
    
    return FawazCell
    
  
    
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    
    TableView.delegate = self
    TableView.dataSource = self
  }
  
}

/*--------------------------------------------------------------*/
class FawazTableCell: UITableViewCell{
  
  @IBOutlet weak var Lable: UILabel!
  
}
