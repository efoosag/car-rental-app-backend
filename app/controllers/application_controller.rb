class ApplicationController < ActionController::API
  def check_current
    if current_user
      puts `
      welcome at #{current_user}`
    else 
      puts 'Nobody' 
    end
  end   
end
