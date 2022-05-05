//
//  Api_Service.swift
//  NBA_Teams
//
//  Created by Ranula Ranatunga on 2022-05-04.
//

import Foundation

request.httpMethod = "GET"
request.allHTTPHeaderFields = headers

let headers = [
    "X-RapidAPI-Host": "api-nba-v1.p.rapidapi.com",
    "X-RapidAPI-Key": "4da6106e95mshc5bdf0de2b42643p15a812jsn2e0bed7539e2"
]

let request = NSMutableURLRequest(url: NSURL(string: "https://api-nba-v1.p.rapidapi.com/teams")! as URL,
    cachePolicy: .useProtocolCachePolicy,timeoutInterval: 10.0)

let session = URLSession.shared
let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
    if (error != nil) {
        print(error)
    } else {
        let httpResponse = response as? HTTPURLResponse
        print(httpResponse)
    }
})

dataTask.resume()
