//
//  ViewModel.swift
//  TDD_TicTacToe
//
//  Created by Student Account on 5/12/23.
//

import Foundation

class TicViewModel: ObservableObject {
    @Published private var ticModel: TicModel

    init() {
        ticModel = TicModel()
    }
    
    var grid: [Cell] {
        get { ticModel.grid }
    }

}


