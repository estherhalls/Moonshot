//
//  CoinController.swift
//  CoinBrowser
//
//  Created by Esther on 10/3/22.
//

import Foundation
class CoinController {
    // MARK: - Singleton
    /// not needed because singleton allows you to restrict the initialization of a single class to happen only once to ensure the properties and collections are always the same set of data. When pulling from an API, every time data is fetched it will replace whatever is in the SOT and we do not need a singleton. Using a singleton here would be SINGLETON ABUSE
    
    // MARK: - SOT
    private static var coins: [Coin] = []
    
    // MARK: - URL
//    private var finalURL: URL? {
//
//}
    private static let baseURLString = "https://api.coingecko.com/api/v3"
    // First URL Component
    private static let keyCoinsComponent = "coins"
    // Second URL Component
    private static let keyListComponent = "list"
    
    // MARK: - CRUD
    // Create: Coins will be fetched from data from an API rather than manually created for the user
    /// Completion handler needed because the fetch function is responsible for hitting an API Endpoint. We chose Boolean as our closure completion because its success will tell us whether everything worked (true) or if there was an error (false). One parameter named completion that is marked as @escaping and takes in a bool value and doesn't return anything.
    static func fetchCoins(completion: @escaping (Bool) -> Void) {
        guard let baseURL = URL(string: baseURLString) else {return completion(false)}
        
        let coinsURL = baseURL.appendingPathComponent(keyCoinsComponent)
        let finalURL = coinsURL.appendingPathComponent(keyListComponent)
        
        print(finalURL)
        
    }
    
    
    // Update:
    // Delete:
    
    // MARK: - Helper Functions
    
    // MARK: - Persistence
    
}
