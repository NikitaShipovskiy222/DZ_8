//
//  MainScreenCollectionViewCell.swift
//  DZ_8
//
//  Created by Nikita Shipovskiy on 24/04/2024.
//

import UIKit

protocol MainScreenProtocol: AnyObject{
    static var resuldId: String {get}
}

final class MainScreenCollectionViewCell: UICollectionViewCell, MainScreenProtocol {
    static var resuldId: String = "MainScreenCollectionViewCell"

    
    var viewWidth: CGFloat = 0
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.viewWidth = UIScreen.main.bounds.width
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var userNameLabel: UILabel = {
        .config(view: $0) { label in
            label.font = UIFont.systemFont(ofSize: 20, weight: .black)
            label.textColor = .black
            label.numberOfLines = 0
           // label.textAlignment = .center
            label.contentMode = .center
            label.heightAnchor.constraint(equalToConstant: 24).isActive = true
        }
    }(UILabel())
    
    
    private lazy var profileImg: UIImageView = {
        $0.clipsToBounds = true
     return $0
    }(UIImageView(frame: CGRect(x: 20, y: 20, width: 44, height: 44)))
    
    
    
    private lazy var mainImg: UIImageView = {
        .config(view: $0) { img in
            img.clipsToBounds = true
            img.contentMode = .scaleAspectFill
        }
    }(UIImageView())
    
    
    
    private lazy var labelDate: UILabel = {
        .config(view: $0) { label in
            label.contentMode = .left
            label.numberOfLines = 0
            label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
            label.textColor = UIColor(named: "dateColor")
            
        }
    }(UILabel())
    
    private lazy var boldLabel: UILabel = {
        .config(view: $0) { label in
            label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
            label.numberOfLines = 0
            label.textColor = .black
            label.textAlignment = .left
        }
    }(UILabel())
    
    private lazy var descriptonLabel: UILabel = {
        .config(view: $0) { label in
            label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
            label.textColor = .black
            label.numberOfLines = 0
            label.textAlignment = .left
        }
    }(UILabel())
    
    func setupCell(item: ModelData) {
        profileImg.image = UIImage(named: item.profileImg)
        mainImg.image = UIImage(named: item.mainImage)
        boldLabel.text = item.textMain
        descriptonLabel.text = item.text
        userNameLabel.text = item.userName
        labelDate.text = item.date1.getDataDifarence()
        
        
        
        [profileImg, userNameLabel, mainImg, labelDate, boldLabel, descriptonLabel].forEach{
            addSubview($0)
        }
        backgroundColor = .background

        setUserNameLabel()
        setMainImg()
        setLabelDate()
        setDescriptonLabel()
        setBoldLabel()
        
    }
    
    
    private func setDescriptonLabel() {
        NSLayoutConstraint.activate([
            descriptonLabel.topAnchor.constraint(equalTo: boldLabel.bottomAnchor, constant: 10),
            descriptonLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptonLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            descriptonLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
        
    }
    
    private func setBoldLabel() {
        NSLayoutConstraint.activate([
            boldLabel.topAnchor.constraint(equalTo: labelDate.bottomAnchor, constant: 4),
            boldLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            boldLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        
        ])
        
    }
    
    private func setLabelDate() {
        
        NSLayoutConstraint.activate([
            labelDate.topAnchor.constraint(equalTo: mainImg.bottomAnchor, constant: 9),
            labelDate.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }
    
    private func setUserNameLabel() {
        NSLayoutConstraint.activate([
            userNameLabel.leadingAnchor.constraint(equalTo: profileImg.trailingAnchor, constant: 20),
            userNameLabel.topAnchor.constraint(equalTo:  profileImg.topAnchor, constant: 10),
        
        ])
        
    }
    
    
    private func setMainImg() {
        
        NSLayoutConstraint.activate([
            mainImg.widthAnchor.constraint(equalToConstant: viewWidth - 100),
            mainImg.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 30),
            mainImg.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            mainImg.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
  
        ])

        
    }

    
}


