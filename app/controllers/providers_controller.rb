require 'net/http'
require 'rexml/document'

class ProvidersController < ApplicationController
  rescue_from Tire::Search::SearchRequestFailed do |error|
    redirect_to providers_path
  end

  def index
    @providers = Provider.all

    doc = REXML::Document.new(Net::HTTP.get_response(URI.parse('http://api.hostip.info/')).body)
    doc.elements.each("//gml:name") do |element|
      @state = element.text[-2] + element.text[-1]
      @city = element.text.split[0...1].join(' ')[0..-2]
    end

  end
  def show
    if user_signed_in?
      @provider = Provider.find(params[:id])
    else
      redirect_to new_user_session_path
    end
  end
  def search
    @providers = Provider.tire.search params[:q]

    doc = REXML::Document.new(Net::HTTP.get_response(URI.parse('http://api.hostip.info/')).body)
    doc.elements.each("//gml:name") do |element|
      @state = element.text[-2] + element.text[-1]
      @city = element.text.split[0...1].join(' ')[0..-2]
    end

    render :action => "index"
  end
  def create
    username = params[:provider][:username]
    password = params[:provider][:password]
    accountID = Net::HTTP.get_response(URI.parse('https://mymedwall.com/phr_test/MyMedWall_User_Authentication.aspx?UserId='+username+'&UstPws='+password+'&AccountId=')).body

    if accountID != "0"
      @provider = Provider.create(params[:provider])
      @providers = Provider.all
      render :action => "index"
    else
      @provider = Provider.new
      render :action => "new"
    end

    
  end
  def new
    @provider = Provider.new
  end
end
