//
//  VCTypeEnumaration.swift
//  NavigationThings-SwiftUIKit
//
//  Created by Samet Koyuncu on 12.07.2024.
//

import UIKit
import RouteTown

enum VCType {
    case main, red, blue, green, teal, pink, indigo, orange, yellow, tabBarRed, tabBarBlue, tabBarGreen
    
    var configuration: ViewControllerConfiguration {
        switch self {
        case .main:
            return ViewControllerConfiguration(
                backgroundColor: .lightGray,
                buttonTitlesAndActions: [
                    ButtonConfiguration(title: "Present (fullscreen)", action: { RT.shared.present(vc: YellowVC()) }, color: .gray.withAlphaComponent(1)),
                    ButtonConfiguration(title: "Present (popover)", action: { RT.shared.present(vc: YellowVC(), modalPresentationStyle: .popover) }, color: .gray.withAlphaComponent(0.8)),
                    ButtonConfiguration(title: "Push", action: { RT.shared.push(vc: YellowVC()) }, color: .gray.withAlphaComponent(0.6)),
                    ButtonConfiguration(title: "Present (as root nc)", action: { RT.shared.presentAsRoot(vc: YellowVC()) }, color: .gray.withAlphaComponent(0.4)),
                    ButtonConfiguration(title: "Present (as window's root nc)", action: { RT.shared.changeRootViewController(to: UINavigationController(rootViewController: YellowVC())) }, color: .gray.withAlphaComponent(0.2)),
                    ButtonConfiguration(title: "Route Hell", action: { RT.shared.push(vc: RedVC()) }, color: .red.withAlphaComponent(0.8)),
                ]
            )
        case .red:
            return ViewControllerConfiguration(
                backgroundColor: .red,
                buttonTitlesAndActions: [
                    ButtonConfiguration(title: "Present Blue (popover)", action: { RT.shared.present(vc: BlueVC(), modalPresentationStyle: .popover) }, color: .blue),
                    ButtonConfiguration(title: "Present Tabbar as Root", action: { RT.shared.changeRootViewController(to: TabbarVC()) }, color: .gray),
                    ButtonConfiguration(title: "Present GreenNC", action: { RT.shared.present(vc: UINavigationController(rootViewController: GreenVC()), modalPresentationStyle: .popover) }, color: .green),
                    ButtonConfiguration(title: "Go back (general)", action: { RT.shared.goBack() }, color: .gray),
                    ButtonConfiguration(title: "Go back (dismiss)", action: { RT.shared.dismiss() }, color: .gray),
                ]
            )
        case .blue:
            return ViewControllerConfiguration(
                backgroundColor: .blue,
                buttonTitlesAndActions: [
                    ButtonConfiguration(title: "Present as root Green (fullscreen)", action: { RT.shared.presentAsRoot(vc: GreenVC()) { result in print(result) } }, color: .green),
                    ButtonConfiguration(title: "Present GreenNC (fullscreen)", action: { RT.shared.present(vc: UINavigationController(rootViewController: GreenVC())) { result in print(result) } }, color: .green),
                    ButtonConfiguration(title: "Present Green", action: { RT.shared.present(vc: GreenVC(), modalPresentationStyle: .popover) }, color: .green),
                    ButtonConfiguration(title: "Present GreenNC", action: { RT.shared.present(vc: UINavigationController(rootViewController: GreenVC()), modalPresentationStyle: .popover) }, color: .green),
                ]
            )
        case .green:
            return ViewControllerConfiguration(
                backgroundColor: .green,
                buttonTitlesAndActions: [
                    ButtonConfiguration(title: "Push Teal", action: { RT.shared.push(vc: TealVC()) }, color: .systemTeal),
                    ButtonConfiguration(title: "Dismiss (BlueVC)", action: { RT.shared.goBack() }, color: .blue),
                    ButtonConfiguration(title: "Switch to Red Tab", action: { RT.shared.switchToTab(index: 0) }, color: .red)
                ]
            )
        case .teal:
            return ViewControllerConfiguration(
                backgroundColor: .systemTeal,
                buttonTitlesAndActions: [
                    ButtonConfiguration(title: "Push Pink", action: { RT.shared.push(vc: PinkVC()) }, color: .systemPink),
                    ButtonConfiguration(title: "Pop", action: { RT.shared.goBack() }, color: .green),
                    ButtonConfiguration(title: "Dismiss", action: { RT.shared.dismiss() }, color: .blue)
                ]
            )
        case .pink:
            return ViewControllerConfiguration(
                backgroundColor: .systemPink,
                buttonTitlesAndActions: [
                    ButtonConfiguration(title: "Push Indigo", action: { RT.shared.push(vc: IndigoVC()) }, color: .systemIndigo),
                    ButtonConfiguration(title: "Pop (TealVC)", action: { RT.shared.goBack() }, color: .systemTeal),
                    ButtonConfiguration(title: "Pop to Root", action: { RT.shared.goBackToRoot() }, color: .green),
                    ButtonConfiguration(title: "Switch to Green Tab", action: { RT.shared.switchToTab(index: 2) }, color: .green)
                ]
            )
        case .indigo:
            return ViewControllerConfiguration(
                backgroundColor: .systemIndigo,
                buttonTitlesAndActions: [
                    ButtonConfiguration(title: "Pop to Teal VC", action: { RT.shared.goBackTo(vcType: TealVC.self) }, color: .systemTeal),
                    ButtonConfiguration(title: "Pop", action: { RT.shared.goBack() }, color: .systemPink),
                    ButtonConfiguration(title: "Pop to Root", action: { RT.shared.goBackToRoot() }, color: .green),
                    ButtonConfiguration(title: "Dismiss", action: { RT.shared.dismiss() }, color: .blue),
                    ButtonConfiguration(title: "Present Red", action: { RT.shared.present(vc: RedVC(), modalPresentationStyle: .popover) }, color: .red),
                    ButtonConfiguration(title: "Open Orange as window's root", action: { RT.shared.changeRootViewController(to: OrangeVC()) }, color: .orange)
                ]
            )
        case .orange:
            return ViewControllerConfiguration(
                backgroundColor: .orange,
                buttonTitlesAndActions: [
                    ButtonConfiguration(title: "Push Indigo", action: { RT.shared.push(vc: IndigoVC()) }, color: .systemIndigo),
                    ButtonConfiguration(title: "Present Indigo as Root", action: { RT.shared.presentAsRoot(vc: IndigoVC()) }, color: .systemIndigo),
                    ButtonConfiguration(title: "Pop (TealVC)", action: { RT.shared.goBack() }, color: .systemTeal),
                    ButtonConfiguration(title: "Pop to Root (GreenVC)", action: { RT.shared.goBackToRoot() }, color: .green)
                ]
            )
        case .yellow:
            return ViewControllerConfiguration(
                backgroundColor: .systemYellow,
                buttonTitlesAndActions: [
                    ButtonConfiguration(title: "Push Teal", action: { RT.shared.push(vc: TealVC()) }, color: .systemTeal),
                    ButtonConfiguration(title: "Go Back (pop or dismiss)", action: { RT.shared.goBack() }, color: .gray),
                    ButtonConfiguration(title: "Dismiss", action: { RT.shared.dismiss() }, color: .gray),
                ]
            )
        case .tabBarRed:
            return ViewControllerConfiguration(
                backgroundColor: .systemRed,
                buttonTitlesAndActions: [
                    ButtonConfiguration(title: "Present Blue (popover)", action: { RT.shared.present(vc: BlueVC(), modalPresentationStyle: .popover) }, color: .blue),
                    ButtonConfiguration(title: "Switch to Blue Tab", action: { RT.shared.switchToTab(index: 1) }, color: .blue),
                    ButtonConfiguration(title: "Switch to Green Tab", action: { RT.shared.switchToTab(index: 2) }, color: .green)
                ]
            )
        case .tabBarBlue:
            return ViewControllerConfiguration(
                backgroundColor: .systemBlue,
                buttonTitlesAndActions: [
                    ButtonConfiguration(title: "Switch to Red Tab", action: { RT.shared.switchToTab(index: 0) }, color: .red),
                    ButtonConfiguration(title: "Push Teal", action: { RT.shared.push(vc: TealVC()) }, color: .systemTeal),
                    ButtonConfiguration(title: "Switch to Green Tab", action: { RT.shared.switchToTab(index: 2) }, color: .green)
                ]
            )
        case .tabBarGreen:
            return ViewControllerConfiguration(
                backgroundColor: .systemGreen,
                buttonTitlesAndActions: [
                    ButtonConfiguration(title: "Switch to Red Tab", action: { RT.shared.switchToTab(index: 0) }, color: .red),
                    ButtonConfiguration(title: "Switch to Blue Tab", action: { RT.shared.switchToTab(index: 1) }, color: .blue)
                ]
            )
        }
    }
}

