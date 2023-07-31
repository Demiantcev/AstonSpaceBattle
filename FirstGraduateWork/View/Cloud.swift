//
//  Cloud.swift
//  FirstGraduateWork
//
//  Created by Кирилл Демьянцев on 28.07.2023.
//

import UIKit

class Cloud: UIImageView {
    
    let sizeCloud = CGSize(width: 60, height: 60)
    let cloudScore: Int = 10
    
    func cloudAnimate(_ view: UIView, randomCoordinate: CGFloat) {
        UIView.animate(withDuration: 5,
                       delay: 10,
                       options: [.curveLinear]) { [self] in
            self.frame.origin.y += view.bounds.height + self.frame.height
        } completion: { [self]  _ in
            self.frame.origin.x = randomCoordinate
            self.frame.origin.y = -sizeCloud.height
            cloudAnimate(view, randomCoordinate: randomCoordinate)
        }
    }
}
