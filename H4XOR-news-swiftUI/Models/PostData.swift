//
//  PostData.swift
//  H4XOR-news-swiftUI
//
//  Created by 林晓中 on 2024/12/3.
//

struct Results: Decodable{
    let hits: [Post]
}

//Identifiable是一个protocol，要求必须有id属性
struct Post: Decodable, Identifiable{
    
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
