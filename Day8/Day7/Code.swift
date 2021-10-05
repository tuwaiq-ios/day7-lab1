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
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let emoji = emojis [indexPath.row]
    let AlertControll = UIAlertController(
      
      title : "Warning ! \(emoji)",
      message: "We have hacked you !!!" ,
      preferredStyle : UIAlertController.Style.alert)
    
    AlertControll.addAction(
      UIAlertAction(
        
        title : "pay 500" ,
        style : UIAlertAction.Style.default ,
        handler : {Action in print("hahahahah")}
      )
    )

    present(AlertControll, animated: true, completion: nil)
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
