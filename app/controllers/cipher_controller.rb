class CipherController < ApplicationController
  def index
  end

  def create
    @ciphertext = params[:ciphertext].to_s.upcase
    @space = params[:c_space] #doesnt work quite wellllll.....
    if (@ciphertext.nil?) then
      flash[:warning] = "Please enter a ciphertext.."
      render 'index'
    else
      @cipherstat = equate_stat @ciphertext, @space
      @langstats = Langstat.all
      session[:cipherstat] = @cipherstat
      session[:ciphertext] = @ciphertext
    end
  end

  def edit
    @langstats = Langstat.all
    @cipherstat = session[:cipherstat]
    @ciphertext = session[:ciphertext]
    @subs = Hash.new
    ('A'..'Z').each do |a|
      @subs[a] = params[a]
      @ciphertext = @ciphertext.gsub(a, @subs[a])
    end
    render 'create'
  end

  #returns a alphabetic frequncy hash [c|f] of a given text
  private
  def equate_stat (text, space)
    stat = Hash.new
    puts text
    if (not space) then text.delete(' ') end
    text.split("").each do |c|
      stat[c] = (stat[c].nil?) ? 1 : stat[c] + 1
    end
    ('A'..'Z').each do |a|
      if (stat[a].nil?) then stat[a] = 0
      else
        stat[a] = ((stat[a] / 1.0) / text.length)
      end
    end
    stat
  end
end
