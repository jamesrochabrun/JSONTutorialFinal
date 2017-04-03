//
//  MovieViewModel.swift
//  JSONTutorialFinal
//
//  Created by James Rochabrun on 3/26/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import Foundation
import UIKit

struct MovieViewModel {
    
    let title: String
    let imageURL: String
    let releaseDate: String
    let purchasePrice: String
    let summary: String
    
    init(model: Movie) {
        self.title = model.title.uppercased()
        self.imageURL = model.imageURL
        self.releaseDate = "Relase date: \(model.releaseDate)"
        if let doublePurchasePrice = Double(model.purchasePrice.amount) {
            self.purchasePrice = String(format: "%.02f %@", doublePurchasePrice, model.purchasePrice.currency)
        } else {
            self.purchasePrice = "Not available for Purchase"
        }
        self.summary = model.summary == "" ? "No data provided" : model.summary
    }
}

