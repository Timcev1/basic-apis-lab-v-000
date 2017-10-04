class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    @resp = Faraday.get 'https://api.github.com/search/repositories' do |req|
      req.params['client_id'] = 'ea2c775ddc585111043b'
      req.params['client_secret'] = '0d68088d3f4e5eb1e86d5ea9712c10404edcb568'
  end
end
