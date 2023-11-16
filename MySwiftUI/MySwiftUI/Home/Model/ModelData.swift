//
//  ModelData.swift
//  MySwiftUI
//
//  Created by 高明阳 on 2023/11/15.
//

import Foundation

class ModelData{
    public static func load<T:Decodable>(_ filename:String) -> T {
        let data:Data
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else{
            fatalError("Couldn't find \(filename) in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        }catch{
            fatalError("Coundn't load \(filename) from main bundle.\n \(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        }catch{
            fatalError("Counldn't parse \(filename) as \(T.self):\n \(error)")
        }
    }
    public static let landmarks:[Landmark] = load("landmarkData.json")
}
