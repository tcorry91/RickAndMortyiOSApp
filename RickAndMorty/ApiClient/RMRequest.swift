//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Corry Timothy on 23/2/2023.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    //// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    
    //// Desired endpoint
    let endpoint: RMEndpoint
    
    ////Path compponets for api, if any
    let pathComponents: Set<String>
    
    //quesry arguemnts for API, if any
    let queryParameters: [URLQueryItem]
    
    ////Construacted url for the api request in string format
 
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            string += argumentString
        }
        return string
        
    }
    //// computed and constructed api url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    //// Desired http method
    public let httpMethod = "GET"
    
    
    // MARK: - Public
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of Path components
    ///   - queryParameters: Colleciton of qury parameters
    ///
    ///
   public init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
    
}


