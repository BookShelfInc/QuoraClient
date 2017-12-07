//
//  BasePage.swift
//  Quora
//
//  Created by Mirzhan Gumarov on 12/6/17.
//  Copyright © 2017 Mirzhan Gumarov. All rights reserved.
//

import UIKit

class BasePage: UIViewController {
    let logoView = UIImageView(frame: CGRect(x: 0, y: 0, width: 80, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad() 
        view.backgroundColor = .white
        
        configureTitleView()
    }
    
    private func configureTitleView() {
        logoView.contentMode = .scaleAspectFit
        logoView.image = #imageLiteral(resourceName: "logo")
        self.navigationItem.titleView = logoView
    }
    
    func showAlertController() {
        func showAlertController(title: String, message: String) {
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert) 
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            alertController.addAction(cancelAction)
            
            present(alertController, animated: true, completion: nil)
        }
    }
    
    func addConstraints() { }
}
