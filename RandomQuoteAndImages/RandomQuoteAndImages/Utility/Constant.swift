//
//  Constant.swift
//  RandomQuoteAndImages
//
//  Created by Cordero Hernandez on 4/1/22.
//

import Foundation

struct Constant {
    
    struct Url {
        
        static func getRandomImageUrl() -> URL? {
            return URL(string: "https:// picsum.photos/200/300?uuid=\(UUID().uuidString)")
        }
        
        static let randomQuoteUrl = URL(string: "https://api.quotable.io/random")
    }
}
