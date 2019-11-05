//
//  Slide.swift
//  OnboardingSnapkitDemo
//
//  Created by zgpeace on 2019/11/5.
//  Copyright © 2019 zgpeace. All rights reserved.
//

import UIKit
import SnapKit

class Slide: UIView {

    let imageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    let labelTitle: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    let labelDesc: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textColor = .black
        label.textAlignment = .center
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(imageView)
        self.addSubview(labelTitle)
        self.addSubview(labelDesc)
        
        imageView.snp.makeConstraints { (make) in
            make.top.equalTo(self)
            make.leading.equalTo(self)
            make.trailing.equalTo(self)
            make.height.equalTo(self.bounds.height / 2)
        }
        
        labelTitle.snp.makeConstraints { (make) in
            make.top.equalTo(imageView.snp_bottomMargin).offset(150)
            make.leading.equalTo(self)
            make.trailing.equalTo(self)
        }
        
        labelDesc.snp.makeConstraints { (make) in
            make.top.equalTo(labelTitle.snp_bottomMargin).offset(50)
            make.leading.equalTo(self)
            make.trailing.equalTo(self)
        }
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
