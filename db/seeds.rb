user = User.create(nickname: 'Customer',name: 'One Customer',picture: 'https://cdn.auth0.com/blog/hello-auth0/auth0-user.png',updated_at: '2021-05-04T21:33:09.415Z',email: 'customer@example.com',email_verified: false, sub: 'auth0|12345678901234567890', role: 'admin')
Message.create(user_id: user.id, message_type: "public", text: "hola")
Message.create(user_id: user.id, message_type: "protected", text: "hola prot")
Message.create(user_id: user.id, message_type: "admin", text: "hola admin")