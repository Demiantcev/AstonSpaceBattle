//
//  Extension + ViewController.swift
//  FirstGraduateWork
//
//  Created by Кирилл Демьянцев on 14.07.2023.
//

import UIKit

extension GameViewController {
    func setupBoardView(frame: CGRect) -> UIView {
        let boardView = UIView()
        boardView.frame = frame
        view.gradientBoard()
        return boardView
    }
}
