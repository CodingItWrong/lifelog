# frozen_string_literal: true
class EntriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_entry, only: %i[show edit update destroy]

  # GET /entries
  def index
    @entries = current_user.entries.order(log_time: :desc)
  end

  # GET /entries/1
  def show
  end

  # GET /entries/new
  def new
    @entry = current_user.entries.new
  end

  # GET /entries/1/edit
  def edit
  end

  # POST /entries
  def create
    @entry = current_user.entries.new(entry_params)

    if @entry.save
      redirect_to entries_url, notice: 'Entry was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entries/1
  def update
    if @entry.update(entry_params)
      redirect_to @entry, notice: 'Entry was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /entries/1
  def destroy
    @entry.destroy
    redirect_to entries_url, notice: 'Entry was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_entry
    @entry = current_user.entries.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def entry_params
    params.require(:entry).permit(:log_time, :latitude, :longitude, :location_name, :notes)
  end
end
