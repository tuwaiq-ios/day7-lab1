//
//  ViewController.swift
//  lab7-emoji
//
//  Created by  HANAN ASIRI on 27/02/1443 AH.
//
import Foundation
import UIKit





class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    let emojis = ["👾","😎" ,"👻" , "🤓"]
    
    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! Hanancell
        
        cell.label1.text = emojis[indexPath.row]
        
        if ( indexPath.row % 2 == 0) {
            cell.label1.backgroundColor = UIColor.blue
        } else {
            cell.label1.backgroundColor = UIColor.red
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoje = emojis [indexPath.row]
        let alertcontroller = UIAlertController(title: "warning!!😆"
                            , message: "we haved hacked you \(emoje) "
                            , preferredStyle: UIAlertController.Style.alert
        )
        alertcontroller.addAction(
          UIAlertAction(title: "pay500", style: UIAlertAction.Style.default, handler: { Action in print("hahahah")
           
          })
        )
        self.present(alertcontroller, animated: true, completion: nil)
    }

    }
class Hanancell : UITableViewCell {
    @IBOutlet weak var label1: UILabel!
}
