//
//  ViewControllerConfiguration.swift
//  NavigationThings-SwiftUIKit
//
//  Created by Samet Koyuncu on 12.07.2024.
//

import UIKit

struct ViewControllerConfiguration {
    let backgroundColor: UIColor
    let buttonTitlesAndActions: [ButtonConfiguration]
}

struct ButtonConfiguration {
    let title: String
    let action: () -> Void
    var color: UIColor = .black
}
