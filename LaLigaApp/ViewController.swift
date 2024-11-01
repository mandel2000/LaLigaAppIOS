//
//  ViewController.swift
//  LaLigaApp
//
//  Created by jaime on 1/5/24.
//

import UIKit

class ViewController: UIViewController{
    
    private let teamsTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(teamsTableView)
        
        NSLayoutConstraint.activate([
                    teamsTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    teamsTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    teamsTableView.topAnchor.constraint(equalTo: view.topAnchor),
                    teamsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                ])
    }


}

