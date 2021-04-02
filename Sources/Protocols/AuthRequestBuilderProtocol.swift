import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public protocol AuthRequestBuilderProtocol {
    func requestFor(socketID: String, channelName: String) -> URLRequest?
}
