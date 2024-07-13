//
//  ViewController.swift
//  NavigationThings-SwiftUIKit
//
//  Created by Samet Koyuncu on 12.07.2024.
//

import RouteTown
import UIKit

class MainViewController: BaseViewController {
    override func viewDidLoad() {
        RTLogger.shared.configure(isLoggingEnabled: true, isShowAlertEnabled: true)
        self.configuration = VCType.main.configuration
        super.viewDidLoad()
    }
}

class RedVC: BaseViewController {
    override func viewDidLoad() {
        self.configuration = VCType.red.configuration
        super.viewDidLoad()
    }
}

class BlueVC: BaseViewController {
    override func viewDidLoad() {
        self.configuration = VCType.blue.configuration
        super.viewDidLoad()
    }
}

class GreenVC: BaseViewController {
    override func viewDidLoad() {
        self.configuration = VCType.green.configuration
        super.viewDidLoad()
    }
}

class TealVC: BaseViewController {
    override func viewDidLoad() {
        self.configuration = VCType.teal.configuration
        super.viewDidLoad()
    }
}

class PinkVC: BaseViewController {
    override func viewDidLoad() {
        self.configuration = VCType.pink.configuration
        super.viewDidLoad()
    }
}

class IndigoVC: BaseViewController {
    override func viewDidLoad() {
        self.configuration = VCType.indigo.configuration
        super.viewDidLoad()
    }
}

class OrangeVC: BaseViewController {
    override func viewDidLoad() {
        self.configuration = VCType.orange.configuration
        super.viewDidLoad()
    }
}

class YellowVC: BaseViewController {
    override func viewDidLoad() {
        self.configuration = VCType.yellow.configuration
        super.viewDidLoad()
    }
}

// MARK: - tabbar
class TabbarVC: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Tab bar arka plan rengini beyaz yap
        self.tabBar.barTintColor = .white
        self.tabBar.isTranslucent = false
        
        // View controller'ları oluştur ve ikonları ekle
        let redVC = TabBarRedVC()
        let redNavVC = UINavigationController(rootViewController: redVC)
        redNavVC.tabBarItem = UITabBarItem(title: "Red", image: UIImage(systemName: "circle.fill"), tag: 0)
        
        let blueVC = TabBarBlueVC()
        let blueNavVC = UINavigationController(rootViewController: blueVC)
        blueNavVC.tabBarItem = UITabBarItem(title: "Blue", image: UIImage(systemName: "circle.fill"), tag: 1)
        
        let greenVC = TabBarGreenVC()
        let greenNavVC = UINavigationController(rootViewController: greenVC)
        greenNavVC.tabBarItem = UITabBarItem(title: "Green", image: UIImage(systemName: "circle.fill"), tag: 2)

        self.viewControllers = [redNavVC, blueNavVC, greenNavVC]
    }
}

class TabBarRedVC: BaseViewController {
    override func viewDidLoad() {
        self.configuration = VCType.tabBarRed.configuration
        super.viewDidLoad()
    }
}

class TabBarBlueVC: BaseViewController {
    override func viewDidLoad() {
        self.configuration = VCType.tabBarBlue.configuration
        super.viewDidLoad()
    }
}

class TabBarGreenVC: BaseViewController {
    override func viewDidLoad() {
        self.configuration = VCType.tabBarGreen.configuration
        super.viewDidLoad()
    }
}

