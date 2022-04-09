//
//  Webservice.swift
//  GoodNews
//
//  Created by Sergio Santos on 09/04/22.
//

import Foundation

class Webservice {
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        print("Call Service")
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                let articleList: ArticlesList? = try? JSONDecoder().decode(ArticlesList.self, from: data)
                
                if let articleList = articleList {
                    print(articleList.articles)
                    completion(articleList.articles)
                }
            }
            
        }.resume()
    }
}
