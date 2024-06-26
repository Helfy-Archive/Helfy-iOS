//
//  Config.swift
//
//  Created by 박신영
//

import Foundation

enum Config {
    
    enum Keys {
        enum Plist {
            static let baseURL = "BASE_URL"
            static let gitHubClientId = "GITHUB_CLIENT_ID"
        }
    }
    
    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("plist cannot found.")
        }
        return dict
    }()
}

extension Config {
    
    static let baseURL: String = {
        guard let key = Config.infoDictionary[Keys.Plist.baseURL] as? String else {
            fatalError("Base URL is not set in plist for this configuration.")
        }
        return key
    }()
    static let gitHubClientId: String = {
        guard let key = Config.infoDictionary[Keys.Plist.gitHubClientId] as? String else {
            fatalError("gitHubClientId is not set in plist for this configuration.")
        }
        return key
    }()
}
