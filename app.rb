require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @name = params[:name]
    reversename = @name.reverse 
    "#{reversename}"
  end

  get '/square/:number' do 
    @number = params[:number].to_i
    square = @number*@number
    "#{square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times.collect do |phrase|
      "#{@phrase}\n"
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1}" +" "+ "#{@word2}" +" "+ "#{@word3}" +" "+ "#{@word4}" +" "+ "#{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    if @op == "+"
      result = @num1+@num2
    elsif @op == "-"
      result = @num2-@num1
    elsif @op == "*"
      result = @num1*@num2
    else
      result = @num1/@num2
    end
    "#{result}"
  end

end
