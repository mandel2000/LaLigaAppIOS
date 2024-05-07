//
//  TeamViewController.swift
//  LaLigaApp
//
//  Created by jaime on 3/5/24.
//

import Foundation
import UIKit

class TeamViewController: UIViewController, UITableViewDataSource{
    
    var session: URLSession!
    
    var dataTask: URLSessionDataTask?
    
    var teams : [TeamInfo] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        let team = teams[indexPath.row]
        cell.textLabel?.text = team.team.name
        return cell
    }
    
    
    private let teamsTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.session = URLSession(configuration: URLSessionConfiguration.ephemeral)
        
        loadTeams{result in
            switch result {
            case .success(let results):
                self.teams = results
                for team in results{
                    print(team.team.name)
                }
            case .failure(let error):
                print(error )
            }
        }
        
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
    
    func loadTeams(completion : @escaping ((Result<[TeamInfo], Error>) -> ())){
        
        let apiKey = "e4d01e5334msh9db6a390fbc8185p1360a1jsnb8cda4c74309"
        let apiHost = "api-football-v1.p.rapidapi.com"
        
        let headers = ["X-RapidApi-Key":apiKey, "X-RapidApi-Host":apiHost]
        
        if let url = URL(string: "https://api-football-v1.p.rapidapi.com/v3/teams?league=140&season=2023"){
            var request = URLRequest(url: url)
            request.setValue("e4d01e5334msh9db6a390fbc8185p1360a1jsnb8cda4c74309", forHTTPHeaderField: "X-RapidApi-Key")
            request.setValue("api-football-v1.p.rapidapi.com", forHTTPHeaderField: "X-RapidApi-Host")

            dataTask = session.dataTask(with: request, completionHandler: { data, response, error in
                if let error = error{
                    completion(.failure(error))
                }else if let data = data{
                    do {
                        print(data)
                        let teams = try APIClient().parseTeams(from: data)
                        print(teams)
                        DispatchQueue.main.async {
                            self.teams = teams
                            self.teamsTableView.reloadData()
                            completion(.success(teams))}
                    }catch{
                        completion(.failure(error))
                    }
                }
            })
            dataTask?.resume()
        }
    }
    
    
}
