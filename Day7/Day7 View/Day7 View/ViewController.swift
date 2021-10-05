//
//  ViewController.swift
//  Day7 View
//
//  Created by Ahmed Assiri on 28/02/1443 AH.
//

import UIKit




class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    
    let emojis = [ "👾" , "👻" , "🤓" , "🤖" ]
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertController = UIAlertController (title:" wharning", message: "we haved hacked you 😜", preferredStyle: UIAlertController.Style.alert
    
        )
        
        alertController.addAction(UIAlertAction(title: "pay 500", style: UIAlertAction.Style.default, handler: {ACTION in
            print("hhhh")
        }
        )
        )
            present(alertController, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return emojis.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let hh = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! tableViewCell
        
        hh.viewTable1.text = emojis [indexPath.row]
        
        
       if indexPath.row % 2 == 0 {
           hh.viewTable1.backgroundColor = UIColor.yellow
       }
      else {
            hh.viewTable1.backgroundColor = UIColor.orange
      }
            
            
        return hh
        
    
    }
    
    
    @IBOutlet weak var tableView: UITableView!
  
  
    // Do any additional setup after loading the view.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}




class tableViewCell: UITableViewCell {
    
    @IBOutlet weak var viewTable1: UILabel!
    
}
