//
//  ViewController.swift
//  Table cells
//
//  Created by Vasilii on 15/08/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    let cellTableViewIdentifier = "CellTableIdentifier"
    @IBOutlet var tableView: UITableView!
    
    let computers = [
        ["Name": "Macbook Air", "Color": "Silver"],
        ["Name": "Macbook Pro", "Color": "Silver"],
        ["Name": "iMac", "Color": "Silver"],
        ["Name": "Mac Mini", "Color": "Silver"],
         ["Name": "Macbook Pro", "Color": "Black"]
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(NameAndColorCell.self, forCellReuseIdentifier: cellTableViewIdentifier)
        let xib = UINib(nibName: "NameAndColorCell", bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: cellTableViewIdentifier)
        tableView.rowHeight = 65
    }

    // MARK: - Table View Data Source Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return computers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellTableViewIdentifier, for: indexPath) as! NameAndColorCell
        
        let rowData = computers[indexPath.row]
        cell.name  = rowData["Name"]! //по ключу Name
        cell.color = rowData["Color"]!
        
        return cell
    }

}

