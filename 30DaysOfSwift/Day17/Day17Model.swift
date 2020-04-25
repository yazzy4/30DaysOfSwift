//
//  Day17Model.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/23/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import Foundation

class MovieGenre {
    var name: String
    var movies: [Day17Model]
    
    init(name: String, movies: [Day17Model] ) {
        self.name = name
        self.movies = movies
    }
}



class Day17Model {
    
    var movieTitle: String?
    var movieCast: String?
    
    static func populateMovies() -> [MovieGenre]{
        let result = [MovieGenre]()
        var actionMovies = [Day17Model]()
        var comedyMovies = [Day17Model]()
        var dramaMovies = [Day17Model]()
        
        for movie in MovieData {
            if movie["genre"] == "action" {
                let m = Day17Model()
                m.movieTitle = movie["title"]
                m.movieCast = movie["cast"]
                actionMovies.append(m)
            }
        
            if movie["genre"] == "comedy"{
                let m = Day17Model()
                m.movieTitle = movie["title"]
                m.movieCast = movie["cast"]
                comedyMovies.append(m)
            }
        
            if movie["genre"] == "drama"{
                let m = Day17Model()
                m.movieTitle = movie["title"]
                m.movieCast = movie["cast"]
                dramaMovies.append(m)
            }
        
        }
        return result
    }
    
    
    static let MovieData = [
        
        ["title": "Jason Bourne", "cast": "Matt Damon, Alicia Vikander, Julia Stiles", "genre": "action"],
        
        ["title": "Suicide Squad", "cast": "Margot Robbie, Jared Leto, Will Smith", "genre": "action"],
        
        ["title": "Star Trek Beyond", "cast": "Chris Pine, Zachary Quinto, Zoe Saldana", "genre": "action"],
        
        ["title": "Deadpool", "cast": "Ryan Reynolds, Morena Baccarin, Gina Carano", "genre": "action"],
        
        ["title": "London Has Fallen", "cast": "Gerard Butler, Aaron Eckhart, Morgan Freeman, Angela Bassett", "genre": "action"],
        
        ["title": "Ghostbusters", "cast": "Kate McKinnon, Leslie Jones, Melissa McCarthy, Kristen Wiig", "genre": "comedy"],
        
        ["title": "Central Intelligence", "cast": "Dwayne Johnson, Kevin Hart", "genre": "comedy"],
        
        ["title": "Bad Moms", "cast": "Mila Kunis, Kristen Bell, Kathryn Hahn, Christina Applegate", "genre": "comedy"],
        
        ["title": "Keanu", "cast": "Jordan Peele, Keegan-Michael Key", "genre": "comedy"],
        
        ["title": "Neighbors 2: Sorority Rising", "cast": "Seth Rogen, Rose Byrne", "genre": "comedy"],
        
        ["title": "The Shallows", "cast": "Blake Lively", "genre": "drama"],
        
        ["title": "The Finest Hours", "cast": "Chris Pine, Casey Affleck, Holliday Grainger", "genre": "drama"],
        
        ["title": "10 Cloverfield Lane", "cast": "Mary Elizabeth Winstead, John Goodman, John Gallagher Jr.", "genre": "drama"],
        
        ["title": "A Hologram for the King", "cast": "Tom Hanks, Sarita Choudhury", "genre": "drama"],
        
        ["title": "Miracles from Heaven", "cast": "Jennifer Garner, Kylie Rogers, Martin Henderson", "genre": "drama"],
        
        ["title": "Superbad", "cast": "Michael Cera, Jonah Hill, Christopher Mintz-Plasse", "genre": "comedy"],
        
        ["title": "The Hangover", "cast": "Zach Galifianakis, Bradley Cooper, Justin Bartha", "genre": "comedy"],
        
        ["title": "The 40-Year-Old Virgin", "cast": "Steve Carell, Catherine Keener, Paul Rudd", "genre": "comedy"],
        
        ["title": "American Pie", "cast": "Jason Biggs, Chris Klein, Thomas Ian Nicholas", "genre": "comedy"],
        
        //
        
        ["title": "Moonlight", "cast": "Mahershala Ali, Naomie Harris, Trevante Rhodes", "genre": "drama"],
        
        //
        
        ["title": "Adrift", "cast": "Shailene Woodley, Sam Claflin, Jeffrey Thomas", "genre": "drama"],
        
        //
        
        ["title": "A Star Is Born", "cast": "Lady Gaga, Bradley Cooper, Sam Elliott", "genre": "drama"],
        
        //
        
        ["title": "Arrival", "cast": "Amy Adams, Jeremy Renner, Forest Whitaker", "genre": "drama"],
        
        //
        
        ["title": "Spotlight", "cast": "Mark Ruffalo, Michael Keaton, Rachel McAdams", "genre": "drama"],
        
        
        
        //
        
        ["title": "First Man", "cast": "Ryan Gosling, Claire Foy, Jason Clarke", "genre": "drama"],
        
        ]
}
