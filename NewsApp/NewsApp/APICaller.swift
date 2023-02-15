//
//  APICaller.swift
//  NewsApp
//
//  Created by Michael Favre on 15/02/2023.
//

import Foundation


class APICaller {
    //MARK: - PROPERTIES
    static let shared = APICaller()
    
    struct Constants {
        static let topHeadlinesURL = URL(string: "https://newsapi.org/v2/top-headlines?country=fr&apiKey=19c68bc823754be1a240dc284f71eed3")
    }
    
    private init() {}
    
    //MARK: - METHODS
    public func getTopStories(completion: @escaping (Result<[Article], Error>) -> Void) {
        guard let url = Constants.topHeadlinesURL else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
            } else if let data = data {
                
                do {
                    let result = try JSONDecoder().decode(APIResponse.self, from: data)
                    print("Articles: \(result.articles.count)")
                    completion(.success(result.articles))
                }
                catch {
                    completion(.failure(error))
                }
            }
        }
        task.resume()
    }
}
