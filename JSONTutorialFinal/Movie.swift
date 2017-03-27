//
//  Movie.swift
//  JSONTutorial
//
//  Created by James Rochabrun on 3/26/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import Foundation
import UIKit

struct Movie {
    
    let title: String
    let imageURL: String?
    let releaseDate: String
    let purchasePrice: Price
    let summary: String?
}

struct Price {
    let amount: String
    let currency: String
}
