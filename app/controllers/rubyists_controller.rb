class RubyistsController < ApplicationController

  def index
    client = Octokit::Client.new(:access_token => ENV["octokit_auth"])
    @rubyists = client.search_users("location:Indianapolis language:Ruby", page: params[:id], sort: "joined", order: "asc")[:items]
  end
end
