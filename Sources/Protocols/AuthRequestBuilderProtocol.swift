import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

@objc public protocol AuthRequestBuilderProtocol {
    @objc optional func requestFor(socketID: String, channelName: String) -> URLRequest?
}
