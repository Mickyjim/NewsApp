//
//  APIResponse.swift
//  NewsApp
//
//  Created by Michael Favre on 15/02/2023.
//

import Foundation


struct APIResponse: Codable {
    let articles: [Article]
}
