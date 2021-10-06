//
//  viewcontroller class.swift
//  emoji day7 taske2
//
//  Created by MacBook on 27/02/1443 AH.
//

import UIKit

class viewcontrollerClass :
    UIViewController,UITableViewDataSource,UITableViewDelegate{
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
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
     let emo = emojis [indexPath.row]
        
     let alertController = UIAlertController(
                        title:"waring(\"😱",
                        message: "we have hacked you😅❌",
                        preferredStyle: UIAlertController.Style.alert)
    
        alertController.addAction(UIAlertAction(
            title: "pay 500 ",
            style: UIAlertAction.Style.default,
            handler: {Action in
                print("hahaha🤣🤣🤣")
            })
        )
        
        //
        alertController.addAction(UIAlertAction(
            title: "cancel",
            style: UIAlertAction.Style.cancel,
            handler: {Action in
                print("cancel")
            })
        )
                                  
  present(alertController, animated: true, completion: nil)
        
    }
}


class custemcell : UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
}
