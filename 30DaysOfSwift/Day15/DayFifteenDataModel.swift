//
//  DayFifteenDataModel.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/22/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import Foundation
class Day15DataModel: Codable {
    var _id: String?
    var balance: String?
    var picture: String?
    var age: Int?
    var eyeColor: String?
    var name: String?
    var company: String?
    var email: String?
    var phone: String?
    var address: String?
    var favoriteFruit: String?
    
    static func parseData() -> [Day15DataModel]{
        if let path = Bundle.main.path(forResource: "Day15Data", ofType: "json"){
            do{
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: Data.ReadingOptions.mappedIfSafe)
                let jsonResult = try JSONDecoder().decode([Day15DataModel].self, from: data)
                return jsonResult
            } catch {
                print(error.localizedDescription)
            }
        }
        return []
    }
}
