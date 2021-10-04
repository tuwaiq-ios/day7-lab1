//
//  ViewController.swift
//  task2 day6
//
//  Created by Macbook on 27/02/1443 AH.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    @IBOutlet weak var tableview: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    let emojis=["👾","👻","🤓","🤖"]
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let table = tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as!CustumCell
        
        table.label.text =  emojis[indexPath.row]
        

        if indexPath.row % 2 == 0{
            table.backgroundColor = UIColor.red
            
        }
        else {
            table.backgroundColor = UIColor.yellow
            
        }
            return table
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource=self
        tableview.delegate=self
    }

}

