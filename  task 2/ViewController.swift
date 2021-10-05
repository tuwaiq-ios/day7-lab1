//
//  ViewController.swift
//   task 2
//
//  Created by Abdulaziz on 27/02/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    
    
    @IBOutlet weak var tableview: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojjis.count
    }
    
    let emojjis = ["👾", "👻" , "🤓" , "🤖" ]

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
        let emo = emojjis [ indexPath.row]
        
        let AlertController = UIAlertController(
        
            title: ("Habibi \(emo)"),
            message: "We have hacked you 😵‍💫 ",
            preferredStyle:UIAlertController.Style.alert
        
        )
        AlertController.addAction(UIAlertAction(title: "Pay 499 😌", style: UIAlertAction.Style.cancel, handler: {action in
            print("thanks")
        }))
        
        
        AlertController.addAction(UIAlertAction(title: "Pay 500", style: UIAlertAction.Style.default, handler:{ action in
            print("Hahahahaha")
        }))
        present(AlertController, animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let emoji = tableView.dequeueReusableCell(withIdentifier: "em", for: indexPath) as! custemCell
        emoji.label.text = emojjis [indexPath.row]
     
        if indexPath.row == 0 {
            emoji.label.backgroundColor = UIColor.red
        }
        else if indexPath.row == 1 {
            emoji.label.backgroundColor = UIColor.yellow
        }
        else if indexPath.row == 2 {
            emoji.label.backgroundColor = UIColor.red
        }
        else if indexPath.row == 3 {
            emoji.label.backgroundColor = UIColor.yellow
            
        }
        
        return emoji
       

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        // Do any additional setup after loading the view.
        
    }


}

