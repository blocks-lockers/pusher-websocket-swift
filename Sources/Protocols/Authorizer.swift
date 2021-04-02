import Foundation

public protocol Authorizer {
    func fetchAuthValue(socketID: String, channelName: String, completionHandler: @escaping (PusherAuth?) -> Void)
}
