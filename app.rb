require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @reverse = params[:name]
    "#{@reverse.reverse}"
  end
  
  get '/square/:number' do 
    @squared = params[:number].to_i
    "#{@squared ** 2}"
  end 
  
    get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @phrase = params[:pharse] 
    @num.times{"#{@phrase}"}
    end 
end