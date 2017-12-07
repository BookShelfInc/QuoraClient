//
//  AskQuestionPage.swift
//  Quora
//
//  Created by Mirzhan Gumarov on 12/7/17.
//  Copyright © 2017 Mirzhan Gumarov. All rights reserved.
//

import UIKit

class AskQuestionPage: SecondaryBasePage {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Ask a Question"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(dismissPage))
    }
    
    @objc func dismissPage() {
        dismiss(animated: true, completion: nil)
    }
}
