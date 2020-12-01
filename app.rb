require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    eman = params[:name].reverse
    "#{eman}"
  end

  get "/square/:number" do
    @num = params[:number]
    num_i =  @num.to_i
    "#{num_i*num_i}"
  end

  get "/say/:number/:phrase" do
    @word = params[:phrase]
    @times = params[:number]
    amt = @times.to_i
    "#{@word*amt}"
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_one = params[:word1]
    @word_two = params[:word2]
    @word_three = params[:word3]
    @word_four = params[:word4]
    @word_five = params[:word5]
    "#{@word_one} #{@word_two} #{@word_three} #{@word_four} #{@word_five}."
  end 

  get '/:operation/:number1/:number2' do 
    num1 = params[:number1]
    num2 = params[:number2]
    op = params[:operation]
  end 

end