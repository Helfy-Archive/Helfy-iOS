//
//  UIButton++.swift
//
//  Created by 박신영
//

import UIKit

extension UIButton {
    func setTitleWithLeftPadding(_ title: String?, for state: UIControl.State, leftPadding: CGFloat) {
        let attributedTitle = NSAttributedString(
            string: title ?? "",
            attributes: [
                NSAttributedString.Key.paragraphStyle: NSMutableParagraphStyle().with {
                    $0.alignment = .left
                    $0.firstLineHeadIndent = leftPadding
                }
            ]
        )
        
        setAttributedTitle(attributedTitle, for: state)
    }
}

