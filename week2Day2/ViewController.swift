//
//  ViewController.swift
//  week2Day2
//
//  Created by ibrahim asiri on 27/02/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let emojis = ["🤪", "😜", "😝", "🤨"]
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let emjCell = tableView.dequeueReusableCell(withIdentifier: "emjs", for: indexPath) as! CustomCell
        
        emjCell.label.text = emojis[indexPath.row]
        
        if indexPath.row % 2 == 0{
            emjCell.label.backgroundColor = UIColor.orange
        }
        else{
            emjCell.label.backgroundColor = UIColor.gray
        }
        return emjCell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertMsg = UIAlertController(title: "Test", message: "we traing", preferredStyle: .alert)
        
        alertMsg.addAction(UIAlertAction(title: " What!!! \(alertMsg)",
                                         style: UIAlertAction.Style.default,
                                         handler: { ACTION in print("...")
            
        }))
        UIApplication.shared.keyWindow?.rootViewController?.present(alertMsg, animated: true, completion: nil)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }


}

class CustomCell : UITableViewCell{
    
    @IBOutlet weak var label: UILabel!
}
