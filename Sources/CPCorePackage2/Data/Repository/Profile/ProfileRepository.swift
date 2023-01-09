//
//  ProfileRepository.swift
//  Core
//
//  Created by septe habudin on 07/01/23.
//

import Foundation
import Combine

@available(macOS 10.15, *)
protocol ProfileRepositoryProtocol {
    func getProfiles() -> AnyPublisher<ProfileModel, Error>
}

final class ProfileRepository: NSObject {

    typealias ProfileInstance = (ProfileDataSource) -> ProfileRepository

    fileprivate let remote: ProfileDataSource

    private init( remote: ProfileDataSource) {
        self.remote = remote
    }

    static let sharedInstance: ProfileInstance = {  remoteRepo in
        return ProfileRepository(remote: remoteRepo)
    }

}

@available(macOS 10.15, *)
extension ProfileRepository: ProfileRepositoryProtocol {
    func getProfiles() -> AnyPublisher<ProfileModel, Error> {
        return self.remote.getProfiles()
            .map { ProfileMapper.mapProfileToDomains(input: $0)  }
            .eraseToAnyPublisher()
    }
}

