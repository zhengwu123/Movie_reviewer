//
//  MovieRecord.swift
//  Pods
//
//  Created by New on 1/7/16.
//
//

import UIKit
import Foundation
import SwiftyJSON

    struct MovieRecord {
        let title: String
        let image: String
        let rating: Int
        let year: Int
        
        init(json: JSON) {
            title = json["_highlightResult", "title", "value"].stringValue
            image = json["image"].stringValue
            rating = json["rating"].intValue
            year = json["year"].intValue
        }
    }


