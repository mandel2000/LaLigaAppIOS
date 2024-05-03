//
//  ApiClient.swift
//  LaLigaApp
//
//  Created by jaime on 2/5/24.
//

import Foundation

class APIClient: NSObject {
    
    static var shared = APIClient()
    
    let url = URL(string: "https://api-football-v1.p.rapidapi.com/v3")!
    let apiKey = "e4d01e5334msh9db6a390fbc8185p1360a1jsnb8cda4c74309"
    let apiHost = "api-football-v1.p.rapidapi.com"

    var headers: [String: String]
    var session: URLSession
        
    var token: String = ""
    
    override  init() {
        headers = ["X-RapidApi-Key":apiKey, "X-RapidApi-Host":apiHost]
        session = URLSession.shared
    }
    
    
    func getTeams(completion: @escaping ([Team])->Void) {
        //TODO: implementar peticion
        completion([])
    }
    
    func parseTeams(from data: Data) throws -> TeamResponse {
        return try JSONDecoder().decode(TeamResponse.self, from: data)
        
    }
}
