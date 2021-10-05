//
//  ViewController.swift
//  project2 task2
//
//  Created by Hassan Yahya on 27/02/1443 AH.
//
import Foundation
import UIKit

class ViewController: UIViewController,UITableViewDelegate ,UITableViewDataSource {
     
    
    @IBOutlet weak var myTableView: UITableView!
    
    let emojeies = ["🌞","🌝","🍇","🤌🏻","✍🏽"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojeies.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let hh = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! tableviewcell
        
        hh.label.text = emojeies [indexPath.row]

        if indexPath.row % 2 == 0 {
            
            hh.label.backgroundColor = UIColor(red: 28/255, green: 09/255, blue: 30/255 ,alpha: 1.0)
            
        } else {
            hh.label.backgroundColor = UIColor(red: 200/255, green: 195/255, blue: 100/255 ,alpha: 1.0)
            
        }
        return hh
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emojei = emojeies [indexPath.row]
        
        let AlertController = UIAlertController(
            title: "OOOOps \(emojei)",
        message: "Your phone was stolen 💀",
        preferredStyle: .alert)
        
        AlertController.addAction(
            UIAlertAction(
                title: "Pay 1000$",
                style: UIAlertAction.Style.default,
                handler:{ action in
                   print("hahahhah")
              
                })
            
        )
        present(AlertController, animated: true, completion:nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
    

    }
}
    

class tableviewcell:UITableViewCell {
        @IBOutlet weak var label: UILabel!
    }

