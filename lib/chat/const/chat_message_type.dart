enum ChatMessageType {
  OPEN,
  ENTER,
  TALK,
  DELETE,
  LEAVE;

  static ChatMessageType? getChatMessageTypeFromString(String chatMessageTypeString) {
  switch (chatMessageTypeString) {
    case "OPEN":
      return ChatMessageType.OPEN;
    case "ENTER":
      return ChatMessageType.ENTER;
    case "TALK":
      return ChatMessageType.TALK;
    case "DELETE":
      return ChatMessageType.DELETE;
    case "LEAVE":
      return ChatMessageType.LEAVE;
    default:
      return null;
  }
}
}