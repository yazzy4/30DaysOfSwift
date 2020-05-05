//
//  Day26DownloadManager.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 5/5/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class Day26DownloadManager {
    // get api key from here -> themovieb.org
    
    func getPopularMovies(completionHandler: @escaping([MovieData]?) -> Void ){
        var url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=7d3a2300bdc00cce41763594151d3c6a&language=en-US&page=1")!
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil, let data = data else {
              completionHandler(nil)
                return
            }
            do {
                let jsonData = try JSONDecoder().decode(Envelope.self, from: data)
                completionHandler(jsonData.results)
            } catch {
                completionHandler(nil)
                print(error.localizedDescription)
            }
        }.resume()
    }
}

class MovieData: Codable {
    var title: String?
    var overview: String?
    var poster_path: String?
}

class Envelope: Codable {
    var page: Int?
    var total_results: Int?
    var total_pages: Int?
    var results: [MovieData]
}
