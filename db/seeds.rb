Role.create(name: :admin)
Role.create(name: :client)

user1 = User.create(username: 'Admin',
							email: 'admin@gmail.com',
							password: 'password1234',
							password_confirmation: 'password1234')
user1.add_role(:admin)
user2 = User.create(username: 'Dev1',
								    email: 'client1@gmail.com',
								    password: 'password12345',
								    password_confirmation: 'password12345')
user2.add_role(:client)
user3 = User.create(username: 'Dev2',
								    email: 'client2@gmail.com',
								    password: 'password1234',
								    password_confirmation: 'password1234')
user3.add_role(:client)
1.upto(5) do |i|
	Todolist.create(name: "monitor #{i}",
								status: 'New',
								 user: user2)
end
1.upto(5) do |i|
	Todolist.create(name: "monitor #{i}",
								status: 'InProgress',
								 user: user2)
end
1.upto(5) do |i|
	Todolist.create(name: "monitor #{i}",
								status: 'New',
								 user: user3)
end
1.upto(5) do |i|
	Todolist.create(name: "keyboard #{i}",
								status: 'InProgress',
								 user: user3)
end


1.upto(5) do |i|
	Todolist.create(name: "mouse #{i}",
								status: 'Done',
								 user: user2)
end
1.upto(5) do |i|
	Todolist.create(name: "mouse #{i}",
								status: 'Done',
								 user: user3)
end
