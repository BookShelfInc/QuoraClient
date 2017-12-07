//
//  BookmarkTableViewController.swift
//  Quora
//
//  Created by Mirzhan Gumarov on 12/7/17.
//  Copyright © 2017 Mirzhan Gumarov. All rights reserved.
//

import UIKit

class BookmarkTableViewController: UITableViewController {
    let bookmarksTestArray: [String] = ["Bookmark", "Bookmark", "Bookmark", "Bookmark", "Bookmark", "Bookmark"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookmarksTestArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = bookmarksTestArray[indexPath.row]
        
        return cell!
    }
}
