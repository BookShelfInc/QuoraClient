//
//  NewQuestionTableViewController.swift
//  Quora
//
//  Created by Mirzhan Gumarov on 12/7/17.
//  Copyright © 2017 Mirzhan Gumarov. All rights reserved.
//

import UIKit

class NewQuestionTableViewController: UITableViewController {
    let newQuestionsTestArray: [String] = ["NewQuestion", "NewQuestion", "NewQuestion", "NewQuestion", "NewQuestion", "NewQuestion"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newQuestionsTestArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = newQuestionsTestArray[indexPath.row]
        
        return cell!
    }
}
