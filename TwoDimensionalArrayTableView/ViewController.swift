//
//  ViewController.swift
//  TwoDimensionalArrayTableView
//
//  Created by Apple on 15/11/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let cellID = "contactsCell"
    
   /*
    let firstList = ["James Bond","Sherlock", "Bourne Jason", "Ethan Hunt"]
    
    let secondList = ["Mr.K","Jim Moriarty", "White"]
    
    let thirdList = ["BatMan", "SuperMan" , "SpiderMan", "CatWomen"]
    
    */
    
    let twoDimensionalArray = [
        ["James Bond","Sherlock", "Bourne Jason", "Howard Roark"],
        
        ["Mr.K","Jim Moriarty", "White"],
        
        ["BatMan", "SuperMan" , "SpiderMan", "CatWomen"]
        
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Contacts"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
    }
    
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerLabel = UILabel()
        headerLabel.text = "Header"
        headerLabel.backgroundColor = .gray
        return headerLabel
    }
    
  override func numberOfSections(in tableView: UITableView) -> Int {
        return twoDimensionalArray.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return twoDimensionalArray[section].count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        //let name = indexPath.section == 0 ? firstList[indexPath.row] : secondList[indexPath.row]
        
        let name = twoDimensionalArray[indexPath.section][indexPath.row]
        cell.textLabel?.text = "\(name) Section \(indexPath.section) Row \(indexPath.row)"
        cell.textLabel?.textColor = .red
        return cell
    }
    
    
    


}

