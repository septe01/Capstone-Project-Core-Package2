//
//  FavoriteInteractor.swift
//  Core
//
//  Created by septe habudin on 08/01/23.
//

import Foundation
import Combine

@available(macOS 10.15, *)
public protocol FavoriteUseCase {
    func getFavorites() -> AnyPublisher<[CategoryModel], Error>
}

@available(macOS 10.15, *)
public class FavoriteInteractor: FavoriteUseCase {
    private let repository: FavoriteRepositoryProtocol

    required init(repository: FavoriteRepositoryProtocol) {
        self.repository = repository
    }

    public func getFavorites() -> AnyPublisher<[CategoryModel], Error> {
        return repository.getFavorites()
    }
}
