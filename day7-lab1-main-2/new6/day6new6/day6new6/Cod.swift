//
//  cod.swift
//  day6new6
//
//  Created by sally asiri on 27/02/1443 AH.
//


import UIKit

let emojes = ["🍇", "🌸","🍇","🌸","🍇"]

class SallyViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.dataSource=self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojes.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "1234", for: indexPath) as! Customcell
        if indexPath.row % 2 == 0 {
            cell.lable1.backgroundColor = UIColor.orange}
        else {
            cell.lable1.backgroundColor = UIColor.yellow
        }
        cell.lable1.text = emojes[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emo =  emojes [indexPath.row]
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
    
}

class Customcell :UITableViewCell {
    
    //@IBOutlet weak var lable1: UITableViewCell!
    
    @IBOutlet weak var lable1: UILabel!
    
    
    
    
    
}











