//
//  ViewController.swift
//  UITableViewCity
//
//  Created by Артем Галай on 24.08.22.
//

import UIKit

class ViewController: UIViewController {

    private lazy var tableViewCity: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
    }

    private func setupHierarchy() {
        view.addSubview(tableViewCity)

    }

//    private func setupLayout() {
//        tableViewCity.snp.makeConstraints {
//            $0.top.
//        }



}

