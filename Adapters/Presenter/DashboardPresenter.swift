//
//  DashboardPresenter.swift
//  Adapters
//
//  Created by Konrad on 25/08/2018.
//  Copyright © 2018 Konrad. All rights reserved.
//

import Foundation

protocol DashboardPresenterProtocol: class {
    var view: DashboardViewProtocol { get }
    var adapter: AdapterProtocol    { get }
}

class DashboardPresenter: DashboardPresenterProtocol {
    let view: DashboardViewProtocol
    let adapter: AdapterProtocol
    
    init(view: DashboardViewProtocol,
         adapter: AdapterProtocol) {
        self.view = view
        self.adapter = adapter
        
        // data source
        let presenters: [ItemPresenter] = [
            StringCellPresenter(model: "One"),
            StringCellPresenter(model: "Two"),
            StringCellPresenter(model: "Three"),
            IntCellPresenter(model: 4),
            IntCellPresenter(model: 5),
            IntCellPresenter(model: 6),
            ModelCellPresenter(model: Model(x: 7, y: 8)),
            StringCellPresenter(model: "Nine"),
        ]
        self.adapter.set(presenters: presenters)
    }
}
