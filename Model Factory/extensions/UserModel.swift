extension UserModel: Authenticatable {

}

extension UserModel: SessionAuthenticatable {
	typealias SessionID = UUID
	
	var sessionID: SessionID {
		self.id!
	}
}
