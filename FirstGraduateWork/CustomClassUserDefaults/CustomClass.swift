//
//  CustomClass.swift
//  FirstGraduateWork
//
//  Created by Кирилл Демьянцев on 11.07.2023.
//

import UIKit

final class CustomClass: Codable {
    var name: String
    var scroll: CGFloat
    var loadValue: String
    var loadStepper: Double
    
    init(name: String, scroll: CGFloat, loadValue: String, loadStepper: Double) {
        self.name = name
        self.scroll = scroll
        self.loadValue = loadValue
        self.loadStepper = loadStepper
    }
}
