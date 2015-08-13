require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contacts')
require('pry')

get('/') do
  erb(:index)
end

get('/contacts') do
  @contacts = Contacts.all()
  erb(:contacts)
end

get('/contacts/add') do
  erb(:contact_add_form)
end

post('/contacts') do
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  birthday = params.fetch('birthday')
  @contact = Contacts.new(first_name, last_name, birthday)
  @contact.save()
  erb(:success)
end

get('/contacts/:id') do
  @contact = Contacts.find(params.fetch('id').to_i())
  erb(:contact)
end
