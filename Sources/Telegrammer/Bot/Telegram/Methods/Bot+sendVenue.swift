// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.



public extension Bot {

    /// Parameters container struct for `sendVenue` method
    struct SendVenueParams: JSONEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Latitude of the venue
        var latitude: Float

        /// Longitude of the venue
        var longitude: Float

        /// Name of the venue
        var title: String

        /// Address of the venue
        var address: String

        /// Foursquare identifier of the venue
        var foursquareId: String?

        /// Foursquare type of the venue, if known. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
        var foursquareType: String?

        /// Sends the message silently. Users will receive a notification with no sound.
        var disableNotification: Bool?

        /// If the message is a reply, ID of the original message
        var replyToMessageId: Int?

        /// Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.
        var replyMarkup: ReplyMarkup?

        /// Custom keys for coding/decoding `SendVenueParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case latitude = "latitude"
            case longitude = "longitude"
            case title = "title"
            case address = "address"
            case foursquareId = "foursquare_id"
            case foursquareType = "foursquare_type"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, latitude: Float, longitude: Float, title: String, address: String, foursquareId: String? = nil, foursquareType: String? = nil, disableNotification: Bool? = nil, replyToMessageId: Int? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.latitude = latitude
            self.longitude = longitude
            self.title = title
            self.address = address
            self.foursquareId = foursquareId
            self.foursquareType = foursquareType
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to send information about a venue. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendVenueParams](https://core.telegram.org/bots/api#sendvenue)
     
     - Parameters:
         - params: Parameters container, see `SendVenueParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendVenue(params: SendVenueParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "sendVenue", body: body, headers: headers)
            .flatMapThrowing { (container) -> Message in
                return try self.processContainer(container)
        }
    }
}
