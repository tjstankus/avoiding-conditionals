require 'sinatra/base'

class AGSite < Sinatra::Base
  before do
    @domain_data = SiteAttributes.new(request.host).get
  end

  get('/') do
    if @domain_data[:site_type] == 'property'
      slim 'property_home'
    elsif @domain_data[:site_type] == 'management'
      slim 'management_home'
    end
  end
end

# Imagine how the conditional in the root route can (and will) be duplicated all
# over the place.
#
# This is because we've missed the abstraction. We need a PropertySite and a
# ManagementSite, each of which implements the root route and other routes.
#
# The implementation could go in a number of different directions, middleware, a
# router, etc. The main thing is that once we have identified and implemented
# the abstraction, our app/controller is the correct kind of thing, and we are
# freed from the persistent cognitive overload of using primitives.
