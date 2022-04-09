//
//  Article.swift
//  GoodNews
//
//  Created by Sergio Santos on 09/04/22.
//

import Foundation

struct ArticlesList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
