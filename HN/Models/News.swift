//
//  News.swift
//  HackerNews
//
//  Created by Steffan Harmaajarvi on 12.06.2021.
//

import Foundation

struct News: Decodable, Identifiable {
    
    var id: String {
        
        return objectID
        
    }
    
    let objectID: String
    let title: String
    let points: Int
    let url: String
    
}
