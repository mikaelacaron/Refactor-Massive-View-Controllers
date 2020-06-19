//
//  Bundle+Decoding.swift
//  HackingWithSwift
//
//  Created by Mikaela Caron on 6/19/20.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import Foundation

extension Bundle {
    func decode <T: Decodable>(from filename: String) -> T {
        
        guard let url = Bundle.main.url(forResource: filename, withExtension: nil) else {
            fatalError("Failed to locate \(filename) in app bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(filename) in app bundle.")
        }

        let decoder = JSONDecoder()

        guard let loadedProjects = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(filename) from app bundle.")
        }
        
        return loadedProjects
    }
}
