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
    str = ""
    @num = params[:number].to_i
    @phrase = params[:phrase] 
    @num.times{str +="#{@phrase}"}
    str
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end 
    
    get '/:operation/:number1/:number2' do 
      @operation = params[:operation]
      @add = params[:add]
      @subtract = params[:subtract]
      @number1 = params[:number1].to_i 
      @number2 = params[:number2].to_i 
      if @operation = @add
      str = "#{@number1 + @number2}" 
     
      elsif @operation = @subtract
      str = "#{@number2 - @number1}"

      end
      str.to_s
    end 
    
end