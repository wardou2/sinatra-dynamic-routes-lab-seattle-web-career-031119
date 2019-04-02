require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i**2}"
  end

  get '/say/:number/:phrase' do
    phrase = ''
    params[:number].to_i.times do
      phrase << "#{params[:phrase]}"
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    str_arr = params.collect {|key, value| value}
    str_arr.join(' ') << '.'
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation].to_s
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    case op
    when 'add'
      "#{n1+n2}"
    when 'subtract'
      "#{n1-n2}"
    when 'multiply'
      "#{n1*n2}"
    when 'divide'
      "#{n1/n2}"
    end
  end

end
