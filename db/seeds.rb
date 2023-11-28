user = User.create(nickname: 'Admin',name: 'One Admin',picture: 'https://cdn.auth0.com/blog/hello-auth0/auth0-user.png',updated_at: '2021-05-04T21:33:09.415Z',email: 'customer@example.com',email_verified: false, sub: 'auth0|12345678901234567890', role: 'admin')
Message.create(user_id: user.id, message_type: "protected")
puts "Added an admin user with ID = #{user.id} and 1 message"

user1 = User.create(nickname: 'Customer',name: 'One Customer',picture: 'https://cdn.auth0.com/blog/hello-auth0/auth0-user.png',updated_at: '2021-05-04T21:33:09.415Z',email: 'customer@example.com',email_verified: false, sub: 'auth0|12345678901234567890', role: nil)
Message.create(user_id: user1.id, message_type: "public")
Message.create(user_id: user1.id, message_type: "protected")
puts "Added an user with ID = #{user1.id} and two messages"

user2 = User.create(nickname: 'Customer1',name: 'Second Customer',picture: 'https://cdn.auth0.com/blog/hello-auth0/auth0-user.png',updated_at: '2021-05-04T21:33:09.415Z',email: 'customer@example.com',email_verified: false, sub: 'auth0|12345678901234567890', role: nil)
Message.create(user_id: user2.id, message_type: "public")
Message.create(user_id: user.id, message_type: "public")
puts "Added an user with ID = #{user2.id} and two messages"


