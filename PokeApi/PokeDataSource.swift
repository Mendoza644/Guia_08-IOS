//
//  PokeDataSource.swift
//  PokeApi
//
//  Created by Alejandro Mendoza on 10/23/20.
//  Copyright © 2020 Alejandro Mendoza. All rights reserved.
//

import Foundation
import UIKit

class PokeDataSource: NSObject, UICollectionViewDataSource {
    private var pokemonNames: [PokemonData.PokemonResult] = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pokemonNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PokemonCell.cellId, for: indexPath) as? PokemonCell {
            let currentItem = pokemonNames[indexPath.row]
            cell.configure(pokemonData: currentItem, imageId: indexPath.row + 1)
            return cell
        }
        return UICollectionViewCell()
    }
    
    public func getPokemonNames() -> [PokemonData.PokemonResult]{
        return pokemonNames
    }
    
    public func setPokemonNames(pokemonNames: [PokemonData.PokemonResult]) {
        self.pokemonNames = pokemonNames
    }
        
}
