# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#Roles.create([{role_name: 'user'}, {role_name: 'admin'}, {role_name: 'superadmin'}])



#
User.create(
[{email: 'superadmin@gmail.com', password:'password123',role_name:'superadmin'}]
#[{email: 'kp2@gmail.com', password:'123456789',role_name:'admin'}]
#[{:email => 'p2@gmail.com', :password =>'123456789', :role_name =>'user'}]
)

#User.create([{:email => 'kp2@gmail.com', :password =>'123456789',:role_name =>'admin'}])
#User.create([{:email => 'p2@gmail.com', :password =>'123456789', :role_name =>'user'}])
