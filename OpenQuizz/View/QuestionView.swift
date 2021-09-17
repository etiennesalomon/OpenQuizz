//
//  QuestionView.swift
//  OpenQuizz
//
//  Created by Etienne Salomon on 16/09/2021.
//

import UIKit

class QuestionView: UIView {
    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!
    
    enum Style{
        case correct,incorrect,standard
    }
    
    var style: Style = .standard{
        didSet{
            setStyle(style)
        }
    }
    var title = "" {
        didSet{
            label.text = title
        }
    }
    
    private func setStyle(_ style:Style) {
        switch style {
        case .correct:
            backgroundColor = #colorLiteral(red: 0.7881412506, green: 0.9255360961, blue: 0.6273557544, alpha: 1)
            icon.image = UIImage(named: "Icon Correct")
            icon.isHidden = false
            break
        case .incorrect:
            backgroundColor = #colorLiteral(red: 0.9528914094, green: 0.5294627547, blue: 0.5842366815, alpha: 1)
            icon.image = UIImage(named: "Icon Error")
            icon.isHidden = false
            break
        case .standard:
            backgroundColor = #colorLiteral(red: 0.7489542365, green: 0.7725921273, blue: 0.792054832, alpha: 1)
            icon.isHidden = true
            break
        }
    }
}
