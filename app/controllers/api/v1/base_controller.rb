class Api::V1::BaseController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_headers

  respond_to :json

  private

  def set_headers
    # TODO: are chrome-extension URLs uniquely generated based on the manifest?
    origin = request.env['HTTP_ORIGIN']
    if origin && origin.start_with?("chrome-extension://")
      headers['Access-Control-Allow-Origin'] = origin
    else
      headers['Access-Control-Allow-Origin'] = '*'
    end

    headers['Access-Control-Expose-Headers']    = 'ETag'
    headers['Access-Control-Allow-Credentials'] = 'true'
    headers['Access-Control-Allow-Methods']     = 'GET'
    headers['Access-Control-Allow-Headers']     = 
      '*,x-requested-with,Content-Type,If-Modified-Since,If-None-Match'
    headers['Access-Control-Max-Age']           = '86400'
  end
end
