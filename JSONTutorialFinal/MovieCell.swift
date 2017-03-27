//
//  MovieCell.swift
//  JSONTutorial
//
//  Created by James Rochabrun on 3/26/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import Foundation
import UIKit

class MovieCell: UITableViewCell {
    
    let movieImage: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 40
        iv.backgroundColor = #colorLiteral(red: 1, green: 0.3864146769, blue: 0.4975627065, alpha: 1)
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let movieTitleLabel: UILabel = {
        let l = UILabel()
        l.numberOfLines = 0
        l.translatesAutoresizingMaskIntoConstraints = false
        l.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        l.textAlignment = .left
        l.textColor = .white
        return l
    }()
    
    let dateLabel: UILabel = {
        let l = UILabel()
        l.numberOfLines = 0
        l.translatesAutoresizingMaskIntoConstraints = false
        l.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.caption1)
        l.textAlignment = .left
        l.textColor = .white
        return l
    }()
    
    let priceLabel: UILabel = {
        let l = UILabel()
        l.numberOfLines = 0
        l.translatesAutoresizingMaskIntoConstraints = false
        l.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        l.textAlignment = .right
        l.textColor = .white
        return l
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews() {
        backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        addSubview(movieImage)
        movieImage.widthAnchor.constraint(equalToConstant: 80).isActive = true
        movieImage.heightAnchor.constraint(equalToConstant: 80).isActive = true
        movieImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        movieImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        
        addSubview(priceLabel)
        priceLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        priceLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        priceLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        priceLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        addSubview(movieTitleLabel)
        movieTitleLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        movieTitleLabel.leftAnchor.constraint(equalTo: movieImage.rightAnchor, constant: 10).isActive = true
        movieTitleLabel.rightAnchor.constraint(equalTo: priceLabel.leftAnchor, constant: -10).isActive = true
        movieTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        addSubview(dateLabel)
        dateLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        dateLabel.leftAnchor.constraint(equalTo: movieTitleLabel.leftAnchor).isActive = true
        dateLabel.rightAnchor.constraint(equalTo: movieTitleLabel.rightAnchor).isActive = true
        dateLabel.topAnchor.constraint(equalTo: movieTitleLabel.bottomAnchor).isActive = true
        
    }
}

