import UIKit

let emojis = ["👾", "👻", "😎", "🤖"]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =
            tableView.dequeueReusableCell(withIdentifier: "123", for: indexPath) as! tableCell
        cell.lablecell.text = emojis[indexPath.row]
        if indexPath.row % 2 == 0 {
            
            cell.lablecell.backgroundColor = UIColor.red
        } else {
            cell.lablecell.backgroundColor = UIColor.yellow
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis [indexPath.row]
        
        let AlertController = UIAlertController(
            title: "welcome to my first app",
            message: "hello world \(emoji)",
            preferredStyle: .alert)
        
        AlertController.addAction(
            UIAlertAction(
                title:"ok",
                style: UIAlertAction.Style.default,
                handler: {
                    Action in
                    print("hello")
                } )
        )
        present(AlertController, animated:true, completion:nil)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
    }
}

class tableCell:UITableViewCell {
    @IBOutlet weak var lablecell: UILabel!
}

