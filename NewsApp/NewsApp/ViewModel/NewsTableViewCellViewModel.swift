//
//  NewsTableViewCellViewModel.swift
//  NewsApp
//
//  Created by Michael Favre on 15/02/2023.
//

import Foundation


class NewsTableViewCellViewModel {
    let title: String
    let subtitle: String
    let imageURL: URL?
    var imageData: Data? = nil
    
    init(title: String, subtitle: String, imageURL: URL?) {
        self.title = title
        self.subtitle = subtitle
        self.imageURL = imageURL
    }
}
