class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  #before_filter :redirect_subdomain
  #before_filter :https_redirect
  #before_filter :set_time_zone

#	def redirect_subdomain
#	  puts "request host is " + request.host
#	  if request.host == 'www.wisp-net.org'
#	    redirect_to 'http://wisp-net.org' + request.fullpath, status: :moved_permanently
#	  end
#	end

#private

#	def https_redirect 
#		if ENV["ENABLE_HTTPS"] == "yes"
#			if request.ssl? && !use_https? || !request.ssl? && use_https?
#				protocol = request.ssl? ? "http" : "https"
#				flash.keep
#				redirect_to protocol: "#{protocol}://", status: :moved_permanently
#			end
#		end
#	end
#
#	def use_https?
#		true # override in other controllers
#	end


#    def set_time_zone
#      Time.zone = current_user.time_zone
#    end


end
