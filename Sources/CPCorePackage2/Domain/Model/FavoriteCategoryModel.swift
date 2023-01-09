//
//  FavoriteCategoryModel.swift
//  Core
//
//  Created by septe habudin on 08/01/23.
//

import Foundation

public struct FavoriteCategoryModel: Equatable, Identifiable {

    public let id: String
    public let title: String
    public let image: String
    public let description: String
    public let isFavorite: Bool
}

