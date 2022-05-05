//
//  ViewController.swift
//  NBA_Teams
//
//  Created by Ranula Ranatunga on 2022-05-04.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    
    private var nbaTeams = [NTeams]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        reloadData()
        
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.imageView?.image = UIImage(named: "logo\(indexPath.row).jpg")
        cell.textLabel?.text = nbaTeams[indexPath.row].name?.capitalized
        cell.textLabel?.text = nbaTeams[indexPath.row].nickName?.capitalized
        cell.textLabel?.text = nbaTeams[indexPath.row].city?.capitalized
        cell.textLabel?.text = nbaTeams[indexPath.row].code?.capitalized
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return nbaTeams.count
    }
    
    
    
    
    


}

