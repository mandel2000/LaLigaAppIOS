// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let fixturesResponse = try? JSONDecoder().decode(FixturesResponse.self, from: jsonData)

import Foundation

// MARK: - FixturesResponse
struct Fixtures: Codable {
    let errors: [JSONAny]
    let fixturesResponseGet: String
    let paging: Paging
    let parameters: Parameters
    let response: [ResponseFixture]
    let results: Int

    enum CodingKeys: String, CodingKey {
        case errors
        case fixturesResponseGet = "get"
        case paging, parameters, response, results
    }
}

// MARK: - Response
struct ResponseFixture: Codable {
    let fixture: Fixture
    let goals: Goals
    let league: League
    let score: Score
    let teams: Goals
}

// MARK: - Fixture
struct Fixture: Codable {
    let date: Date
    let id: Int
    let periods: Periods
    let referee: String?
    let status: Status
    let timestamp: Int
    let timezone: String
    let venue: Venue
}

// MARK: - Periods
struct Periods: Codable {
    let first, second: Int?
}

// MARK: - Status
struct Status: Codable {
    let elapsed: Int?
    let long: String
    let short: String
}

// MARK: - Goals
struct Goals: Codable {
    let away, home: AwayUnion
}

enum AwayUnion: Codable {
    case awayClass(AwayClass)
    case integer(Int)
    case null

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        if let x = try? container.decode(AwayClass.self) {
            self = .awayClass(x)
            return
        }
        if container.decodeNil() {
            self = .null
            return
        }
        throw DecodingError.typeMismatch(AwayUnion.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for AwayUnion"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .awayClass(let x):
            try container.encode(x)
        case .integer(let x):
            try container.encode(x)
        case .null:
            try container.encodeNil()
        }
    }
}

// MARK: - AwayClass
struct AwayClass: Codable {
    let id: Int
    let logo: String
    let name: String
    let winner: Bool?
}


// MARK: - League
struct League: Codable {
    let country: Country
    let flag: String
    let id: Int
    let logo: String
    let name: String
    let round: String
    let season: Int
}


// MARK: - Score
struct Score: Codable {
    let extratime, fulltime, halftime, penalty: Goals
}

