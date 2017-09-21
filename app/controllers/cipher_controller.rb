class CipherController < ApplicationController
  def index
  end

  def create
    @ciphertext = params[:ciphertext].to_s.upcase
    if (@ciphertext.nil?) then
      flash[:warning] = "Please enter a ciphertext.."
      render 'index'
    else
      @cipherstat = equate_stat @ciphertext, @space
      @langstat = lang_hash(params[:language][:id])
      session[:cipherstat] = @cipherstat
      session[:ciphertext] = @ciphertext
      session[:lang_id] = params[:language][:id]
      render 'decrypt'
    end
  end

  def edit
    @cipherstat = session[:cipherstat]
    @ciphertext = session[:ciphertext]
    @langstat = lang_hash(session[:lang_id])
    @subs = Hash.new
    ('A'..'Z').each do |a|
      if (@subs[a] != params[a]) then
        @subs[a] = params[a]
        @ciphertext = @ciphertext.gsub(a, @subs[a])
      end
    end
    render 'decrypt'
  end

  private
  #returns a alphabetic frequncy hash [c|f] of a given text
  def equate_stat (text, space)
    stat = Hash.new
    text = text.delete(' ').delete(',').delete('.').delete('!').delete('?')
    text.split("").each do |c|
      stat[c] = (stat[c].nil?) ? 1 : stat[c] + 1
    end
    ('A'..'Z').each do |a|
      stat[a] = (stat[a].nil?) ? 0 : (((stat[a] / 1.0) / text.length) * 100)
    end
    stat.sort_by{ |key, value| value }.reverse
  end

  def lang_hash (id)
    lang = Langstat.find(id)
    langstat = Hash.new
    ('A'..'Z').each do |a|
      langstat[a] = (lang[a]/100.0)
    end
    langstat.sort_by{ |key, value| value}.reverse
  end
end
