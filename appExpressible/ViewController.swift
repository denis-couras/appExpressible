//
//  ViewController.swift
//  appExpressible
//
//  Created by Denis Couras on 28/07/22.
//

import UIKit

class ViewController: UIViewController {

    @Capitalized var nome = ""
    @Upper var teste = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        let date: Date = "13-07-1980"
        print(date)
        testView()

        let url: URL = "dfsjfhsjfhsjfs"
        print(url)

        nome = "denis couras"
        print(nome)

        teste = nome
        print(teste)
    }

    func testView() {
        let supView = UIView(frame: .zero)
        supView.backgroundColor = .orange
        supView.translatesAutoresizingMaskIntoConstraints = false
        let vv = UIView(frame: .zero)
        vv.backgroundColor = .green
        vv.translatesAutoresizingMaskIntoConstraints = false
        supView.addSubview(vv)

        let const = vv.leadingAnchor.constraint(equalTo: supView.leadingAnchor)
        const.priority = 1

        
        self.view.addSubview(supView)
    }
}

