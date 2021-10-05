//
//  ViewController.swift
//  DAY6Task
//
//  Created by MacBook on 27/02/1443 AH.
//

import UIKit




class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let emojis = ["🎻","🎨","🎬","🪴","🐈","🖋"]
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView1 .dequeueReusableCell(withIdentifier: "123", for: indexPath) as! customcell
        

        
        cell.label.text =  emojis [indexPath.row]
        
        
        if indexPath.row % 2 == 0 {
              
              cell.label.backgroundColor = UIColor.orange }
          else
          {
              cell.label.backgroundColor = UIColor.cyan
              
          }
          
        
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emo = emojis[indexPath.row]
        //  message
        
        let alertController = UIAlertController(title: "I like The \(emo)", message:
                                                    "These are my interests and hoppies✨", preferredStyle: UIAlertController.Style.alert)
        // ok , cancel
        alertController.addAction(UIAlertAction(
        title: "OK ",
        style: UIAlertAction.Style.default,
        handler: { Action in
            print ("OK")
            
            
        }
        
        ))
        
        alertController.addAction(UIAlertAction(
        title: "cancel ",
        style: UIAlertAction.Style.cancel,
        handler: { Action in
            print ("cancel")
            
            
        }
        
        ))
        //present

        present( alertController, animated: true, completion: nil)
    }
     
    
  
   
    
    

    
    
    
    @IBOutlet weak var tableView1:  UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView1.delegate = self
        tableView1.dataSource = self
    }
    
    
}


class customcell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    //@IBOutlet weak var customcell: Cutomcell!
    
    
    
    
}
