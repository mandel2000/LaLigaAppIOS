////
////  Equipo.swift
////  LaLigaApp
////
////  Created by jaime on 2/5/24.
////
//
//import Foundation
//
//struct TeamResponse: Codable {
//    
//    var errors     : [String]?   = []
//    var get        : String?     = nil
//    var parameters : Parameters? = Parameters()
//    var paging     : Paging?     = Paging()
//    var response   : [Response]? = []
//    var results    : Int?        = nil
//    
//    enum CodingKeys: String, CodingKey {
//        
//        case errors     = "errors"
//        case get        = "get"
//        case parameters = "parameters"
//        case paging     = "paging"
//        case response   = "response"
//        case results    = "results"
//        
//    }
//    
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        errors     = try values.decodeIfPresent([String].self   , forKey: .errors     )
//        get        = try values.decodeIfPresent(String.self     , forKey: .get        )
//        paging     = try values.decodeIfPresent(Paging.self     , forKey: .paging     )
//        response   = try values.decodeIfPresent([Response].self , forKey: .response   )
//        results    = try values.decodeIfPresent(Int.self        , forKey: .results    )
//        
//    }
//    
//    init() {
//        
//    }
//    
//}
//
//
//
//struct Response: Codable {
//    
//    var team  : Team?  = Team()
//    var venue : Venue? = Venue()
//    
//    enum CodingKeys: String, CodingKey {
//        
//        case team  = "team"
//        case venue = "venue"
//        
//    }
//    
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        team  = try values.decodeIfPresent(Team.self  , forKey: .team  )
//        venue = try values.decodeIfPresent(Venue.self , forKey: .venue )
//        
//    }
//    
//    init() {
//        
//    }
//    
//}
//
//
//struct Team: Codable {
//    
//    var code     : String? = nil
//    var country  : String? = nil
//    var founded  : Int?    = nil
//    var id       : Int?    = nil
//    var logo     : String? = nil
//    var name     : String? = nil
//    var national : Bool?   = nil
//    
//    enum CodingKeys: String, CodingKey {
//        
//        case code     = "code"
//        case country  = "country"
//        case founded  = "founded"
//        case id       = "id"
//        case logo     = "logo"
//        case name     = "name"
//        case national = "national"
//        
//    }
//    
//    
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        code     = try values.decodeIfPresent(String.self , forKey: .code     )
//        country  = try values.decodeIfPresent(String.self , forKey: .country  )
//        founded  = try values.decodeIfPresent(Int.self    , forKey: .founded  )
//        id       = try values.decodeIfPresent(Int.self    , forKey: .id       )
//        logo     = try values.decodeIfPresent(String.self , forKey: .logo     )
//        name     = try values.decodeIfPresent(String.self , forKey: .name     )
//        national = try values.decodeIfPresent(Bool.self   , forKey: .national )
//        
//    }
//    
//    init() {
//        
//    }
//}
//
//struct Venue: Codable {
//    
//    var address  : String? = nil
//    var capacity : Int?    = nil
//    var city     : String? = nil
//    var id       : Int?    = nil
//    var image    : String? = nil
//    var name     : String? = nil
//    var surface  : String? = nil
//    
//    enum CodingKeys: String, CodingKey {
//        
//        case address  = "address"
//        case capacity = "capacity"
//        case city     = "city"
//        case id       = "id"
//        case image    = "image"
//        case name     = "name"
//        case surface  = "surface"
//        
//    }
//    
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        address  = try values.decodeIfPresent(String.self , forKey: .address  )
//        capacity = try values.decodeIfPresent(Int.self    , forKey: .capacity )
//        city     = try values.decodeIfPresent(String.self , forKey: .city     )
//        id       = try values.decodeIfPresent(Int.self    , forKey: .id       )
//        image    = try values.decodeIfPresent(String.self , forKey: .image    )
//        name     = try values.decodeIfPresent(String.self , forKey: .name     )
//        surface  = try values.decodeIfPresent(String.self , forKey: .surface  )
//        
//    }
//    
//    init() {
//        
//    }
//    
//}
//
//
//struct Paging: Codable {
//    
//    var current : Int? = nil
//    var total   : Int? = nil
//    
//    enum CodingKeys: String, CodingKey {
//        
//        case current = "current"
//        case total   = "total"
//        
//    }
//    
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        current = try values.decodeIfPresent(Int.self , forKey: .current )
//        total   = try values.decodeIfPresent(Int.self , forKey: .total   )
//        
//    }
//    
//    init() {
//        
//    }
//    
//}
//
//struct Parameters: Codable {
//    
//    var league : String? = nil
//    var season : String? = nil
//    
//    enum CodingKeys: String, CodingKey {
//        
//        case league = "league"
//        case season = "season"
//        
//    }
//    
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        league = try values.decodeIfPresent(String.self , forKey: .league )
//        season = try values.decodeIfPresent(String.self , forKey: .season )
//        
//    }
//    
//    init() {
//        
//    }
//    
//}
//
//
