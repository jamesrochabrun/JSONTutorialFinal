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
    let imageURL: String
    let releaseDate: String
    let purchasePrice: Price
    let summary: String
}

struct Price {
    let amount: String
    let currency: String
}

extension Movie {
    
    struct Key  {
        static let titleDict = "im:name"
        static let imageURLArray = "im:image"
        static let releaseDateDict = "im:releaseDate"
        static let categoryDict = "category"
        static let rentalPriceDict = "im:rentalPrice"
        static let purchacePriceDict = "im:price"
        static let itunesLinkArray = "link"
        static let summaryDict = "summary"
        static let label = "label"
        static let attributes = "attributes"
        static let amount = "amount"
        static let currency = "currency"
        static let href = "href"
        static let term = "term"
    }
    
    //failable initializer
    init?(json: [String: AnyObject]) {
        
        guard let titleDict = json[Key.titleDict] as? [String: AnyObject],
            let title = titleDict[Key.label] as? String,
            let imageURLArray = json[Key.imageURLArray] as? [[String: AnyObject]],
            let imageURL = imageURLArray.last?[Key.label] as? String,
            let releaseDateDict = json[Key.releaseDateDict] as? [String: AnyObject],
            let releaseDateAttributes = releaseDateDict[Key.attributes],
            let releaseDate = releaseDateAttributes[Key.label] as? String,
            let purchasePriceDict = json[Key.purchacePriceDict] as? [String: AnyObject],
            let purchasePriceAttributes = purchasePriceDict[Key.attributes] as? [String: AnyObject],
            let priceAmount = purchasePriceAttributes[Key.amount] as? String,
            let priceCurrency = purchasePriceAttributes[Key.currency] as? String
            else {
                return nil
        }
        
        self.title = title
        self.imageURL = imageURL
        self.releaseDate = releaseDate
        self.purchasePrice = Price(amount: priceAmount, currency: priceCurrency)
        
        if let summaryDict = json[Key.summaryDict] as? [String: AnyObject], let summary = summaryDict[Key.label] as? String {
            self.summary = summary
        } else {
            self.summary = ""
        }
        
    }
    
}

















