//
//  TeamViewController.swift
//  LaLigaApp
//
//  Created by jaime on 3/5/24.
//

import Foundation
import UIKit

class TeamViewController: UIViewController, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        return cell
    }
    
    
    private let teamsTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        teamsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        teamsTableView.dataSource = self
        view.addSubview(teamsTableView)
        
        NSLayoutConstraint.activate([
                    teamsTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    teamsTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    teamsTableView.topAnchor.constraint(equalTo: view.topAnchor),
                    teamsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                ])
        

    }
    
    
}
