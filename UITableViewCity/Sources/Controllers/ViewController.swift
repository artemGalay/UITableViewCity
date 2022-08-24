//
//  ViewController.swift
//  UITableViewCity
//
//  Created by Артем Галай on 24.08.22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    var namesCity = ["Витебск", "Москва", "Батуми", "Париж", "Лондон"]

    var weather = ["Очень жарко, дышать невозможно!", "Ветрено, сдувает просто!", "Адская жара", "Мелкий дождь", "Сильный ветер с дождём"]

    var images = ["thermometer.sun", "wind", "cloud.rain", "thermometer.sun.fill", "cloud.bolt.rain.fill"]

    private lazy var tableViewCity: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Weather"
        setupHierarchy()
        setupLayout()
    }

    private func setupHierarchy() {
        view.addSubview(tableViewCity)

    }

    private func setupLayout() {
        tableViewCity.snp.makeConstraints {
            $0.top.trailing.bottom.leading.equalTo(view)
        }
}

}
