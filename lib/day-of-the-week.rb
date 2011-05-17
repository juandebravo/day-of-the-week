require 'date'
require 'params-validator'
#require 'logger'

module DayOfTheWeek
  extend ParamsValidator::ValidParams
 
  class << self

    def get_day(params)
      validate_method(params) do
        year(Fixnum){ |year| year <= Time.now.year  }
        month(Fixnum)
        day(Fixnum)
      end
      
      date = Date.new(params[:year], params[:month], params[:day])
      Date::DAYNAMES[date.wday]
    end

  end
end




