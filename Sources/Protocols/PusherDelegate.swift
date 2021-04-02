import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public protocol PusherDelegate: AnyObject {
    func debugLog(message: String)

    func changedConnectionState(from old: ConnectionState, to new: ConnectionState)
    func subscribedToChannel(name: String)
    func failedToSubscribeToChannel(name: String, response: URLResponse?, data: String?, error: NSError?)
    func failedToDecryptEvent(eventName: String, channelName: String, data: String?)
    func receivedError(error: PusherError)
}
