//
//  NetworkManager.swift
//  H4XOR-news-swiftUI
//
//  Created by 林晓中 on 2024/12/3.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData(){
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else {return}
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) {(data, response, error) in
            guard error == nil else {return}
            let decoder = JSONDecoder()
            guard let safeData = data else {return}
            do{
                let results = try decoder.decode(Results.self, from: safeData)
                DispatchQueue.main.async {
                    self.posts = results.hits
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
