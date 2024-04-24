//
//  UIView.ext.swift
//  DZ_8
//
//  Created by Nikita Shipovskiy on 24/04/2024.
//

import UIKit

extension UIView {
    static func config<T: UIView>(view: T, completion: @escaping (T) -> Void) -> T {
        view.translatesAutoresizingMaskIntoConstraints = false
        completion(view)
        return view
    }
}

