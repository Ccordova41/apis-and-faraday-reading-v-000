class SearchesController < ApplicationController
  def search
  end

  def foursquare
     Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
       req.params['client_id'] = 'WOENLTMR3AUD0TMGTAU2IYHTXNDOAKI0QY0XHTDWWWYTV2L0'
       req.params['client_secret'] = 'BQSPRJ0DBNHIRFMCJ2MF4Q4BFEFDALWMSJTD05P12MTDGWTD'
       req.params['v'] = '20160201'
       req.params['near'] = params[:zipcode]
       req.params['query'] = 'coffee shop'
     end
     render 'search'
   end
end
