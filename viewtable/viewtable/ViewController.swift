//
//  ViewController.swift
//  viewtable
//
//  Created by خلود سلطان علي آل عبدالرحمن  on 27/02/1443 AH.
//

import UIKit

let emojis = ["👾","👻","🤓","🤖"]

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tabelview: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabelview.dequeueReusableCell(withIdentifier: "1234", for: indexPath) as! CustomCell
        
        
    cell.customecell.text  = emojis[indexPath.row]
    if  indexPath.row % 2 == 0{
        cell.customecell.backgroundColor = UIColor.red
    }
        else
        {
            cell.customecell.backgroundColor = UIColor.orange
        }
    return cell
}

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabelview.delegate = self
        tabelview.dataSource = self
    }
}

class CustomCell : UITableViewCell{
    
    
    @IBOutlet weak var customecell: UILabel!
    
}


