//
//  nba_modal.swift
//  NBA_Teams
//
//  Created by Ranula Ranatunga on 2022-05-04.
//

import Foundation

struct NBATeamsData: Decodable {
    
    let nbaTeams:[NTeams]
    
    private enum keyTeams: String, CodingKey {
        case nbaTeams = "results"
    }
}


struct NTeams : Decodable {
    
    let id: Int
    let name:String?
    let nickName: String?
    let code: String?
    let city: String?
    let logo: String?
    
    private enum keyTeams: String , CodingKey {
        
        case id = "1"
        case name = "team_name"
        case nickName = "nick_name"
        case code = "team_code"
        case city = "team_city"
        case logo = "profile_image"
    }
    
}
