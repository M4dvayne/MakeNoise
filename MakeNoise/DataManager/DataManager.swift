//
//  DataManager.swift
//  MakeNoise
//
//  Created by Вячеслав Кремнев on 05.08.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let sounds: [String] = ["Cat", "Icq", "BarkingDog", "jet", "bee", "police", "police2", "mosquitoSqueak", "thunder", "train", "train2", "grinderTool", "gun", "automaticRiffle", "carAlarm", "carEngine"]
    
    private init() {}
}
