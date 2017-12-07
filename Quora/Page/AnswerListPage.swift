//
//  AnswerListPage.swift
//  Quora
//
//  Created by Mirzhan Gumarov on 12/6/17.
//  Copyright © 2017 Mirzhan Gumarov. All rights reserved.
//

import UIKit

class AnswerListPage: BasePage {
    let questionTableViewController = QuestionTableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Answer"
        
        view.addSubview(questionTableViewController.view)
        
        addConstraints()
    }
    
    override func addConstraints() {
        questionTableViewController.view.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
}
