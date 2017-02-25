//
//  ViewController.swift
//  TableViewDelegateSampler
//
//  Created by ShinokiRyosei on 2017/02/25.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit


// MARK: - ViewController

class ViewController: UIViewController {
    
    
    // MARK: UIViewController

    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    
    // MARK: Private
    
    @IBOutlet private dynamic weak var tableView: UITableView! {
        
        didSet {
            
            tableView.dataSource = self
            tableView.delegate = self
        }
    }
}


// MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }
}


// MARK: - UITableViewDelegate

extension ViewController: UITableViewDelegate {
    
}
