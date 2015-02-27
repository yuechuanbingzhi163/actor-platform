package im.actor.server.api.rpc

import akka.actor._
import im.actor.api.rpc._
import scodec.bits._

object RpcApiService {
  @SerialVersionUID(1L)
  case class HandleRpcRequest(messageId: Long, requestBytes: BitVector)

  @SerialVersionUID(1L)
  case class RpcResponse(messageId: Long, responseBytes: BitVector)

  def props() = Props[RpcApiService]
}

class RpcApiService extends Actor with ActorLogging {
  import RpcApiService._

  def receive = {
    case HandleRpcRequest(messageId, requestBytes) =>
      sender() ! RpcResponse(messageId, BitVector.empty)
  }
}