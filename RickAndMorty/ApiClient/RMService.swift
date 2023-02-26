//
//  RMService.swift
//  RickAndMorty
//
//  Created by Corry Timothy on 23/2/2023.
//

import Foundation



/// Primary API service object to get Rick and Morty data
final class RMService {
    
    /// Privatized constructor
    static let shared = RMService()
    
    /// Shared singleton instance (command shift /)
    private init() {}
    /// Send RIck and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   type: The type of object we expect go get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
        
    ) {
    
    
    }
}

























