class PuppiesController < ApplicationController
  
#see all puppies
    get '/puppies' do
       @puppy = Puppy.all
          erb :view
    end


#create a new puppy

get '/puppies/new' do
    
    erb :new
end


get '/puppies/:id' do
    @puppy = current_puppy
    erb :show
end

post '/puppies' do
    Puppy.create(params)
    redirect '/puppies'
end

get '/puppies/:id/edit' do
    @puppy = current_puppy
    erb :edit
end

 #edit an existing puppy

 patch '/puppies/:id' do
    puppy = current_puppy
    puppy.update(name: params[:name], breed: params[:breed])
    redirect "/puppies/#{params[:id]}"
 end

 
 #delete an existing puppy

 delete '/puppies/:id' do
    puppy = current_puppy
    puppy.destroy
    redirect "/puppies"
 end

def current_puppy
    Puppy.find(params[:id]) 
end

end