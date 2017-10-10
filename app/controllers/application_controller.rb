class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_sessions
require 'csv';
def sums 
	arr = CSV.parse(params["file"].read, converters: :numeric)
	sum = 0 
	for i in 0..arr.length - 1 
	sum += arr[i][0]
	end
	render plain: "%.2f" % sum.ceil
end

end
