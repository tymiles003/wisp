class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_filter :redirect_subdomain
  before_filter :https_redirect

	def redirect_subdomain
	  if request.host == 'www.wisp-net.org'
	    redirect_to 'wisp-net.org' + request.fullpath
	  end
	end

private

	def https_redirect 
		if ENV["ENABLE_HTTPS"] == "yes"
			if request.ssl? && !use_https? || !request.ssl? && use_https?
				protocol = request.ssl? ? "http" : "https"
				flash.keep
				redirect_to protocol: "#{protocol}://", status: :moved_permanently
			end
		end
	end

	def use_https?
		true # override in other controllers
	end

end
