class RubyistsController < ApplicationController

  def index
    rubyist = []
    client = Octokit::Client.new(:access_token => ENV["octokit_auth"])
    rubyists = client.search_users("location:Indianapolis language:Ruby", page: params[:page], sort: "joined", order: "asc")
    @indy_ruby = rubyists[:items].map{|x| Octokit.user(x.login)}
    @pages = (rubyists[:total_count] / 30.0).ceil
  end

  def show
    client = Octokit::Client.new(:access_token => ENV["octokit_auth"])
    @gits = client.list_repos("#{params[:id]}")
  end
end
