//
//  PlayFile.swift
//  True Dare or shots
//
//  Created by Diego on 07/08/18.
//  Copyright © 2018 diego. All rights reserved.
//

import UIKit
import KKSwipeCards

// github.com/kkvinokk/KKSwipeCards

class PlayFile: UIViewController {

    private var previousDetails = [[String: String]]()
    private var swipeView: KKSwipeCardsView<[String: String]>!
    
    private var arrayOfCardDetails: [[String: String]] = [
        ["name": "1", "image": "image1.png", "location": "Palace Grounds"],
        ["name": "2", "image": "image2.png", "location": "Links Brewery"],
        ["name": "3", "image": "image3.png", "location": "Electronic City"],
        ["name": "4", "image": "image4.png", "location": "Sarjapur Road"],
        ["name": "5", "image": "image5.png", "location": "Malleswaram Grounds"],
        ["name": "6", "image": "image6.png", "location": "Whitefield"],
        ["name": "7", "image": "image7.png", "location": "MG Road"],
        ["name": "8", "image": "image8.png", "location": "Links Brewery"],
        ["name": "8", "image": "image9.png", "location": "Palace Grounds"],
        ["name": "9", "image": "image1.png", "location": "Indiranagar"],
        ["name": "10", "image": "image2.png", "location": "Electronic City"],
        ["name": "11", "image": "image3.png", "location": "Malleswaram Grounds"],
        ["name": "12", "image": "image4.png", "location": "Indiranagar"],
        ["name": "13", "image": "image5.png", "location": "Whitefield"],
        ["name": "14", "image": "image6.png", "location": "MG Road"],
        ["name": "15", "image": "image7.png", "location": "Palace Grounds"],
        ["name": "16", "image": "image8.png", "location": "Links Brewery"],
        ["name": "17", "image": "image9.png", "location": "Kanteerava Indoor Stadium "],
        ["name": "18", "image": "image1.png", "location": "Sarjapur Road"],
        ["name": "19", "image": "image2.png", "location": "Kumara Park"],
        ["name": "20", "image": "image3.png", "location": "Links Brewery"],
        ["name": "21", "image": "image4.png", "location": "Electronic City"],
        ["name": "22", "image": "image5.png", "location": "Malleswaram Grounds"],
        ["name": "23", "image": "image6.png", "location": "MG Road"],
        ["name": "24", "image": "image7.png", "location": "Links Brewery"],
        ["name": "25", "image": "image8.png", "location": "Palace Grounds"],
        ["name": "26", "image": "image9.png", "location": "Indiranagar"],
        ["name": "27", "image": "image1.png", "location": "Whitefield"],
        ["name": "28", "image": "image2.png", "location": "Sarjapur Road"],
        ["name": "29", "image": "image3.png", "location": "Electronic City"],
        ["name": "30", "image": "image4.png", "location": "Malleswaram Grounds"]
    ]
    private var actionTexts: [SwipeMode: String] = [.left: "👍", .right: "👎", .top: "👆", .bottom: "👇"]
    private var actionColors: [SwipeMode: UIColor] = [.left: .init(red: 145/255, green: 85/255, blue: 77/255, alpha: 0.7),
                                                      .right: .init(red: 78/255, green: 105/255, blue: 26/255, alpha: 0.7),
                                                      .top: .init(red: 106/255, green: 26/255, blue: 74/255, alpha: 0.7),
                                                      .bottom: .init(red: 90/255, green: 39/255, blue: 41/255, alpha: 0.7)]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSwipeView()
       // setupLoadCards()
        self.swipeView.addCards(arrayOfCardDetails, onTop: true)
        self.view.backgroundColor = UIColor(white: 0.95, alpha: 1.0)
    }
    
    private func setupSwipeView() {
        let viewGenerator: ([String: String], CGRect) -> (UIView) = { (element: [String: String], frame: CGRect) -> (UIView) in
            let container = UIView(frame: CGRect(x: 30, y: 0, width: frame.width - 60, height: frame.height - 40))
            container.clipsToBounds = true
            container.layer.cornerRadius = 16
            container.backgroundColor = .white
            
            let label = UILabel(frame: CGRect(x: 10, y: 0, width: container.frame.width - 20, height: container.frame.height - container.frame.width))
            label.text = element["name", default: ""] + "\n\n" + element["location", default: ""]
            label.textAlignment = .center
            label.numberOfLines = 0
            label.font = UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.semibold)
            container.addSubview(label)
            
            let imageView = UIImageView(image: UIImage(named: element["image", default: "image1.png"]))
            imageView.frame = CGRect(x: 0, y: container.frame.height - container.frame.width, width: container.frame.width, height: container.frame.width)
            imageView.contentMode = .scaleAspectFit
            container.addSubview(imageView)
            
            return container
        }
        
        let overlayGenerator: ([String: String], SwipeMode, CGRect) -> (UIView) = { (element: [String: String], mode: SwipeMode, frame: CGRect) -> (UIView) in
            let label = UILabel()
            label.frame.size = CGSize(width: 100, height: 100)
            label.center = CGPoint(x: frame.width / 2, y: frame.height / 2)
            label.layer.cornerRadius = label.frame.width / 2
            label.backgroundColor = self.actionColors[mode]!.withAlphaComponent(0.7)
            label.clipsToBounds = true
            label.text = self.actionTexts[mode]
            label.font = UIFont.systemFont(ofSize: 24)
            label.textAlignment = .center
            return label
        }
        
        let frame = CGRect(x: 0, y: 80, width: self.view.frame.width, height: self.view.frame.height - 160)
        swipeView = KKSwipeCardsView<[String: String]>(frame: frame,
                                                       viewGenerator: viewGenerator,
                                                       overlayGenerator: overlayGenerator)
        swipeView.delegate = self as! KKSwipeCardsViewDelegate
        self.view.addSubview(swipeView)
    }
    
   // private func setupLoadCards() {
//        let button = UIButton(frame: CGRect(x: 0, y: view.frame.height - 50, width: view.frame.width, height: 40))
//        button.setTitle("Load cards", for: .normal)
//        button.setTitleColor(.brown, for: .normal)
//        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
//        self.view.addSubview(button)
//    }
    
    @objc private func buttonTapped() {
        let ac = UIAlertController(title: "Load on top / on bottom?", message: nil, preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "On Top", style: .default, handler: { (_: UIAlertAction) in
            self.swipeView.addCards(self.arrayOfCardDetails, onTop: true)
        }))
        ac.addAction(UIAlertAction(title: "On Bottom", style: .default, handler: { (_: UIAlertAction) in
            self.swipeView.addCards(self.arrayOfCardDetails, onTop: false)
        }))
        self.present(ac, animated: true, completion: nil)
    }
}

extension PlayFile: KKSwipeCardsViewDelegate {
    
    
    func swipedTop(_ object: Any) {
        let detail = object as! [String: String]
        previousDetails.insert(detail, at: 0)
    }
    
    func swipedBottom(_ object: Any) {
        let detail = object as! [String: String]
        if previousDetails.count > 0 {
            let previousDetail = previousDetails[0]
            previousDetails.remove(at: 0)
            swipeView.addCards([previousDetail, detail], onTop: true)
        } else {
            swipeView.addCards([detail], onTop: true)
        }
    }
    
    func swipedLeft(_ object: Any) {
        let detail = object as! [String: String]
        previousDetails.insert(detail, at: 0)
    }
    
    func swipedRight(_ object: Any) {
        let detail = object as! [String: String]
        previousDetails.insert(detail, at: 0)
    }
    
    func cardTapped(_ object: Any) {
        print("Tapped on: \(object)")
    }
    
    func reachedEndOfStack() {
        print("Reached end of stack")
    }
    
}
