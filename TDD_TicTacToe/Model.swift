//
//  Model.swift
//  TDD_TicTacToeTests
//
//  Created by Student Account on 5/12/23.
//

import Foundation

enum cell: String {
    case x = "X"
    case o = "O"
    case b = "" // blank
}

struct TicModel {
    private var _grid: [cell]
    
    init() {
        _grid = []
        for _ in 0..<9 {
            _grid.append(cell.x)
        }
    }
    
    var grid: [cell] {
        get { _grid }
    }

}


