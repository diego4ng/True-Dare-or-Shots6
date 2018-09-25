//
//  CardView.swift
//  True Dare or shots
//
//  Created by diego on 04/09/18.
//  Copyright © 2018 diego. All rights reserved.
//

import UIKit

class CardView: UIView {

    @IBInspectable var cornerradius : CGFloat = 2
    
    @IBInspectable var shadowOffSetWidth :CGFloat = 0
    
    @IBInspectable var shadowOffSetHeight : CGFloat = 5
    
    @IBInspectable var shadowColor2 :UIColor = UIColor.black
    
    @IBInspectable var shadowOpacity2 :CGFloat = 0.5
    
    
    override func layoutSubviews() {
        
        layer.cornerRadius = cornerradius
        layer.shadowColor = shadowColor2.cgColor
        layer.shadowOffset = CGSize(width: shadowOffSetWidth, height: shadowOffSetHeight)
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerradius)
        layer.shadowPath = shadowPath.cgPath
        layer.shadowOpacity = Float(shadowOpacity2)
    }

}
