//
//  Extension + UIView.swift
//  FirstGraduateWork
//
//  Created by Кирилл Демьянцев on 15.06.2023.
//

import UIKit

extension UIView {
    func gradientBoard() {
        let gradient = CAGradientLayer()
        
        let blue = UIColor(red: 200/255, green: 91/255, blue: 100/255, alpha: 1)
        let green = UIColor(red: 50/255, green: 50/255, blue: 100/255, alpha: 1)
        gradient.colors = [blue.cgColor, green.cgColor]
        gradient.locations = [0, 0.3, 1]
        gradient.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
        self.layer.addSublayer(gradient)
    }
    
    func newImageView(paramImage: UIImage, paramFrame: CGRect) -> UIImageView {
        let result = UIImageView(frame: paramFrame)
        result.frame = paramFrame
        result.contentMode = .scaleAspectFit
        result.image = paramImage
        return result
    }
}
