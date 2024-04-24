//
//  ModelData.swift
//  DZ_8
//
//  Created by Nikita Shipovskiy on 24/04/2024.
//

import Foundation


struct ModelData: Identifiable {
    var id = UUID().uuidString
    var userName: String
    var profileImg: String
    var mainImage: String
    var textMain: String
    var text: String
    var date: String
    
    static func mockData() -> [ModelData]{
        [
            ModelData(userName: "Nikita Shipovskiy", profileImg: "elips1", mainImage: "img1", textMain: "Ut enim ad minim veniam", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in ", date:" 23 апреля 2024"),
            ModelData(userName: "Rafael Satoshi", profileImg: "elips2", mainImage: "img2", textMain: "Ut enim ad minim veniam  eiusmod tempor", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore", date: "24 апреля 2024"),
            ModelData(userName: "Nikola Tesla", profileImg: "elips3", mainImage: "img3", textMain: "Ut enim ad minim veniam  eiusmod tempor", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do ", date: "25 апреля 2024")
        ]
    }
    
}
