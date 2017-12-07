//
//  HomePage.swift
//  Quora
//
//  Created by Mirzhan Gumarov on 12/6/17.
//  Copyright © 2017 Mirzhan Gumarov. All rights reserved.
//

import UIKit

class HomePage: BasePage {
    let segmentedControl = UISegmentedControl()
    let feedTableViewController = FeedTableViewController()
    let bookmarkTableViewController = BookmarkTableViewController()
    let newQuestionTableViewController = NewQuestionTableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Ask", style: .plain, target: self, action: #selector(askQuestion))
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(askQuestion))
        
        configureSegmentedController()
        view.addSubview(segmentedControl)
        
        view.addSubview(feedTableViewController.view)
        view.addSubview(bookmarkTableViewController.view)
        view.addSubview(newQuestionTableViewController.view)
        initialStateOfHomePage()
        addConstraints()
    }
    
    override func addConstraints() {
        segmentedControl.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(5)
            make.leading.equalToSuperview().offset(5)
            make.trailing.equalToSuperview().offset(-5)
            
        }
        
        feedTableViewController.view.snp.makeConstraints { (make) in
            make.top.equalTo(segmentedControl.snp.bottom).offset(3)
            make.leading.trailing.bottom.equalToSuperview()
        }
        
        bookmarkTableViewController.view.snp.makeConstraints { (make) in
            make.top.equalTo(segmentedControl.snp.bottom).offset(3)
            make.leading.trailing.bottom.equalToSuperview()
        }
        
        newQuestionTableViewController.view.snp.makeConstraints { (make) in
            make.top.equalTo(segmentedControl.snp.bottom).offset(3)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
    
    private func configureSegmentedController() {
        segmentedControl.addTarget(self, action: #selector(segmentTapped(_ :)), for: .valueChanged)
        segmentedControl.tintColor = Constants.quoraMainColor
        segmentedControl.insertSegment(withTitle: "Feed", at: 0, animated: true)
        segmentedControl.insertSegment(withTitle: "Bookmarks", at: 1, animated: true)
        segmentedControl.insertSegment(withTitle: "New Questions", at: 2, animated: true)
        
        segmentedControl.selectedSegmentIndex = 0
    }
    
    @objc func segmentTapped(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            initialStateOfHomePage()
        case 1:
            feedTableViewController.view.isHidden = true
            bookmarkTableViewController.view.isHidden = false
            newQuestionTableViewController.view.isHidden = true
        case 2:
            feedTableViewController.view.isHidden = true
            bookmarkTableViewController.view.isHidden = true
            newQuestionTableViewController.view.isHidden = false
        default:
            print("OMG")
        }
    }
    
    @objc func askQuestion(){
        let viewController = AskQuestionPage()
        present(UINavigationController(rootViewController: viewController), animated: true, completion: nil)
    }
    
    func initialStateOfHomePage(){
        feedTableViewController.view.isHidden = false
        bookmarkTableViewController.view.isHidden = true
        newQuestionTableViewController.view.isHidden = true
    }
}
