class SamplesController < ApplicationController
  def index
    samples = Sample.all
    pp samples
    render :json => samples.to_json
  end
end
