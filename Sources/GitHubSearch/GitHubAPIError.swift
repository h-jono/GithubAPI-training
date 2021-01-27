//
//  File.swift
//  
//
//  Created by 城野 on 2021/01/23.
//

public struct GitHubAPIError: Decodable, Error{
    public struct Error: Decodable {
        public var resource: String
        public var field: String
        public var code: String
    }
    
    public var message: String
    public var errors: [Error]
}
