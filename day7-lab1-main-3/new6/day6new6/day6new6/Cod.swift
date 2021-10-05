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
    
   
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    
        let emojis = emojes[indexPath.row]
        let alertController = UIAlertController(title: "wharring",
        message: "we haved hacked you 🤓😈",
                                                
        preferredStyle: UIAlertController.Style.alert
        )
    
//        (title: "Wharring" , message : "We haved hacked you 🤓😈!!!"

    
        alertController.addAction(
        UIAlertAction (
        title : "pay 500",
        style: UIAlertAction.Style.default,
        handler: {Action in
        print ("Handler")
    } ))
        present( alertController, animated: true, completion: nil)
        
    // UIApplication.shared.keyWindow?.rootViewController?.present(alertController,animated: true , completion: nill)
}

                                                 
                                                 
    
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
  
}
class Customcell :UITableViewCell {
    
    //@IBOutlet weak var lable1: UITableViewCell!
    
    @IBOutlet weak var lable1: UILabel!
    
    
    
    
    
}
    
    
    
    




        
    

