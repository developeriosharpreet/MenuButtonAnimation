//
//  MenuButton.swift
//  MenuButtonAnimation
//
//  Created by Animators on 10/07/18.
//  Copyright © 2018 Animators. All rights reserved.
//

import UIKit

protocol menuButtonProtocol {
    func menuButtonPressed()
}

class MenuButton: UIButton {
    
    
    var menuButtonDelegate:menuButtonProtocol?
    
    func initialSetUp(){
        
        self.setTitle("", for: .normal)
        self.tintColor = UIColor.black
        self.setImage(UIImage(named:"menu_button"), for: .normal)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
initialSetUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
         initialSetUp()
     
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        perform(#selector(changeImage), with: nil, afterDelay: 0.1)
        
        UIView.animate(withDuration: 1.5, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.0, options: .allowUserInteraction, animations: {
            if(self.transform == .identity){
                self.transform = CGAffineTransform(rotationAngle: .pi);
                
            }else{
                self.transform = .identity
            }
            
        }) { (true) in
            
        }
    }
    
    @objc func changeImage(){
        
        var image:UIImage?
        
        if(self.currentImage == UIImage(named: "left_arrow")){
            image = UIImage(named: "menu_button")
      
            
        }else{
            image = UIImage(named: "left_arrow")
            
        }
        self.setImage(image, for: .normal)
        
        self.menuButtonDelegate?.menuButtonPressed()
        
        
    }
    
}
