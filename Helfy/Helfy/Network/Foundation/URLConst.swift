//
//  URLConst.swift
//
//  Created by 박신영
//


import Foundation

struct APIConstants {
    static let contentType = "Content-Type"
    static let applicationJSON = "application/json"
    static let multiPart = "multipart/form-data"
}

extension APIConstants {
    
    static var defaultHeader: Dictionary<String,String> {
        [contentType: applicationJSON]
    }
    static var imageHeader: Dictionary<String,String> {
        [contentType: multiPart]
    }
}
