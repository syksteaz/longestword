require "scripts/game_methods.rb"

class WordgameController < ApplicationController
  def game
    @grid = generate_grid(15)
    @start_time = Time.now
    # passer @grid dans les params en hidden
  end

  def score
    @grid = params[:grid].split("")
    @word = params[:wordanswer]
    @start_time = params[:start_time].to_datetime
    @end_time = Time.now
    @results = run_game(@word, @grid, @start_time, @end_time)
  end
end


    # raise pour mettre un stop dans ton code et faire appel au debugger

    # 2 QUESTIONS :

    # est ce qu'on peut avoir des noms de variables qui ont le meme nom
    # que des noms de methodes a la difference pres du @ ?

    # est ce que le @grid defini dans def game est utilisable dans def score ?

