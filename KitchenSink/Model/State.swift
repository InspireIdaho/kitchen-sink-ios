//
//  State.swift
//  KitchenSink
//
//  Created by M.Sean Bonner on 6/4/18.
//  Copyright © 2018 Bonnerventure, Inc. All rights reserved.
//

import Foundation

struct State {
    let name: String
    let cities: [City]
    
    static func loadData() -> [State] {
        var stateList: [State] = []
        
        let oregon = State(name: "Oregon", cities: [
            City(name: "Portland"),
            City(name: "Bend"),
            City(name: "Cannon Beach"),
            City(name: "Astoria"),
            ]
        )
        stateList.append(oregon)
        
        let idaho = State(name: "Idaho", cities: [
            City(name: "Coeur d'Alene"),
            City(name: "Boise"),
            City(name: "Elk City"),
            City(name: "Orofino"),
            ]
        )
        stateList.append(idaho)

        let wash = State(name: "Washington", cities: [
            City(name: "Seattle"),
            City(name: "Tonasket"),
            City(name: "Electric City"),
            City(name: "Longview"),
            ]
        )
        stateList.append(wash)

        let montana = State(name: "Montana", cities: [
            City(name: "St. Regis"),
            City(name: "Trout Creek"),
            City(name: "Billings"),
            City(name: "Great Falls"),
            ]
        )
        stateList.append(montana)

        return stateList
    }
}
