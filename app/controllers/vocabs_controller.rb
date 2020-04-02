# frozen_string_literal: true

class VocabsController < ApplicationController
  before_action :set_vocab, only: %i[show update destroy]

  # GET /vocabs
  def index
    @vocabs = Vocab.all

    render json: @vocabs
  end

  # GET /vocabs/1
  def show
    render json: @vocab
  end

  # POST /vocabs
  def create
    @vocab = Vocab.new(vocab_params)

    if @vocab.save
      render json: @vocab, status: :created, location: @vocab
    else
      render json: @vocab.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vocabs/1
  def update
    if @vocab.update(vocab_params)
      render json: @vocab
    else
      render json: @vocab.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vocabs/1
  def destroy
    @vocab.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_vocab
    @vocab = Vocab.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def vocab_params
    params.require(:vocab).permit(:word, :definition, :sounds_like, :synonyms, :antonyms, :sentence)
  end
end
