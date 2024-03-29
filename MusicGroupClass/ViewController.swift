//
//  ViewController.swift
//  MusicGroupClass
//
//  Created by ABDULLAH GÜNAN on 28.03.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var dumanArray = [Musician]()
    var chosenMember : Musician?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource=self
        tableView.delegate=self
        
        let kaan = Musician(name: "kaan", age:"35", image: (UIImage(named:"kaan.jpeg")!))
        let ari = Musician(name: "ari", age:"40", image: (UIImage(named:"ari.jpeg")!))
        let batuhan = Musician(name: "batuhan", age:"45", image: (UIImage(named:"batuhan.jpeg")!))
        
        dumanArray = [kaan,ari,batuhan]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dumanArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = dumanArray[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenMember = dumanArray[indexPath.row]
        performSegue(withIdentifier: "toSecondCV", sender: nil)

        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondCV" {
            let destinationVC = segue.destination as! SecondVC
            destinationVC.selectMember = chosenMember
        }
    }
}

