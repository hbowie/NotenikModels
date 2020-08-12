	private func users() -> [UserModel] {
        [
            UserModel(userId: "hbowie@notenik.net", 
    			email: "hbowie@hey.com", 
    			password: try! Bcrypt.hash("ChangeMe1"), 
    			firstName: "Herb", 
    			fullName: "Herb Bowie")
        ]
    }