//
//  PlayFile.swift
//  True Dare or shots
//
//  Created by Diego on 07/08/18.
//  Copyright © 2018 diego. All rights reserved.
//

import UIKit
import DMSwipeCards

// github.com/kkvinokk/KKSwipeCards
//github.com/d-32/DMSwipeCards

class PlayFile: UIViewController {

    private var swipeView: DMSwipeCardsView<String>!
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(white: 0.95, alpha: 1.0)
        
        /*
         * In this example we're using `String` as a type.
         * You can use DMSwipeCardsView though with any custom class.
         */
        
        let viewGenerator: (String, CGRect) -> (UIView) = { (element: String, frame: CGRect) -> (UIView) in
            let container = UIView(frame: CGRect(x: 30, y: 20, width: frame.width - 60, height: frame.height - 40))
            let label = UILabel(frame: container.bounds)
            label.text = element
            label.textAlignment = .center
            label.backgroundColor = UIColor.white
            label.font = UIFont.systemFont(ofSize: 48, weight: UIFont.Weight.thin)
            label.clipsToBounds = true
            label.layer.cornerRadius = 16
            container.addSubview(label)
            
            container.layer.shadowRadius = 4
            container.layer.shadowOpacity = 1.0
            container.layer.shadowColor = UIColor(white: 0.9, alpha: 1.0).cgColor
            container.layer.shadowOffset = CGSize(width: 0, height: 0)
            container.layer.shouldRasterize = true
            container.layer.rasterizationScale = UIScreen.main.scale
            
            return container
        }
        
        let overlayGenerator: (SwipeMode, CGRect) -> (UIView) = { (mode: SwipeMode, frame: CGRect) -> (UIView) in
            let label = UILabel()
            label.frame.size = CGSize(width: 100, height: 100)
            label.center = CGPoint(x: frame.width / 2, y: frame.height / 2)
            label.layer.cornerRadius = label.frame.width / 2
            label.backgroundColor = mode == .left ? UIColor.red : UIColor.green
            label.clipsToBounds = true
            label.text = mode == .left ? "👍" : "👎"
            label.font = UIFont.systemFont(ofSize: 24)
            label.textAlignment = .center
            return label
        }
        
        let frame = CGRect(x: 0, y: 80, width: self.view.frame.width, height: self.view.frame.height - 160)
        swipeView = DMSwipeCardsView<String>(frame: frame,
                                             viewGenerator: viewGenerator,
                                             overlayGenerator: overlayGenerator)
        swipeView.delegate = self
        self.view.addSubview(swipeView)
        
        
        // coloca el botton graficamente
        let button = UIButton(frame: CGRect(x: 90, y: 470, width: self.view.frame.width, height: 40))
        button.setTitle("Shot", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        self.view.addSubview(button)
        
        let button2 = UIButton(frame: CGRect(x: -90, y: 470, width: self.view.frame.width, height: 40))
        button2.setTitle("True", for: .normal)
        button2.setTitleColor(UIColor.blue, for: .normal)
        button2.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        self.view.addSubview(button2)
        
        let button3 = UIButton(frame: CGRect(x: 0, y: 470, width: self.view.frame.width, height: 40))
        button3.setTitle("Dare", for: .normal)
        button3.setTitleColor(UIColor.blue, for: .normal)
        button3.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        self.view.addSubview(button3)
    }
    //funcion que hace el boton
    @objc func buttonTapped() {
        
        self.swipeView.addCards((self.count...(self.count+3)).map({"\($0)"}), onTop: true)
        self.count = self.count + 4
    }
}

extension PlayFile: DMSwipeCardsViewDelegate {
    func swipedLeft(_ object: Any) {
        print("Swiped left: \(object)")
    }
    
    func swipedRight(_ object: Any) {
        print("Swiped right: \(object)")
    }
    
    func cardTapped(_ object: Any) {
        print("Tapped on: \(object)")
    }
    
    func reachedEndOfStack() {
        print("Reached end of stack")
    }
}

