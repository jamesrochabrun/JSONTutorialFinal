//
//  MovieFeedVC.swift
//  JSONTutorial
//
//  Created by James Rochabrun on 3/26/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import Foundation
import UIKit

class MovieFeedVC: UITableViewController {
    
    private let cellID = "cellID"
    private var moviesArray = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        tableView.register(MovieCell.self, forCellReuseIdentifier: cellID)
        tableView.contentInset = UIEdgeInsets(top: 22, left: 0, bottom: 0, right: 0)
        dummyMovie()
    }
    
    func dummyMovie() {
        let dummyPrice = Price(amount: "9.99", currency: "USD")
        let dummyMovie = Movie(title: "Arrival", imageURL: nil, releaseDate: "November 11, 2016", purchasePrice: dummyPrice, summary: nil)
        moviesArray.append(dummyMovie)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! MovieCell
        let movie = moviesArray[indexPath.row]
        cell.movieTitleLabel.text = movie.title.uppercased()
        cell.dateLabel.text = "Release date: \(movie.releaseDate)"
        cell.priceLabel.text = "\(movie.purchasePrice.amount) \(movie.purchasePrice.currency)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArray.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}




