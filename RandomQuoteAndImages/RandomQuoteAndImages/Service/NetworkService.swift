//
//  NetworkService.swift
//  RandomQuoteAndImages
//
//  Created by Cordero Hernandez on 4/1/22.
//

import Foundation

enum NetworkError: Error {
    case badUrl
}

class NetworkService {
    
    
    func getRandomImages(ids: [Int]) async throws -> [RandomImage] {
        
        var randomImages: [RandomImage] = []
        
        for id in ids {
            let randomImage = try await getRandomImage(id: id)
            randomImages.append(randomImage)
        }
        
        return randomImages
    }
    
    func getRandomImage(id: Int) async throws -> RandomImage {
        
        guard let randomImageUrl = Constant.Url.getRandomImageUrl() else {
            throw NetworkError.badUrl
        }
        
        guard let randomQuoteUrl = Constant.Url.randomQuoteUrl else {
            throw NetworkError.badUrl 
        }
        
        return RandomImage()
    }
    
}
