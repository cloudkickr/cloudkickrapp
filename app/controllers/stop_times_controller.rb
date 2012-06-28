class StopTimesController < ApplicationController
  # GET /stop_times
  # GET /stop_times.json
  def index
    @stop_times = StopTime.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stop_times }
    end
  end

  # GET /stop_times/1
  # GET /stop_times/1.json
  def show
    @stop_time = StopTime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stop_time }
    end
  end

  # GET /stop_times/new
  # GET /stop_times/new.json
  def new
    @stop_time = StopTime.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stop_time }
    end
  end

  # GET /stop_times/1/edit
  def edit
    @stop_time = StopTime.find(params[:id])
  end

  # POST /stop_times
  # POST /stop_times.json
  def create
    @stop_time = StopTime.new(params[:stop_time])

    respond_to do |format|
      if @stop_time.save
        format.html { redirect_to @stop_time, notice: 'Stop time was successfully created.' }
        format.json { render json: @stop_time, status: :created, location: @stop_time }
      else
        format.html { render action: "new" }
        format.json { render json: @stop_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stop_times/1
  # PUT /stop_times/1.json
  def update
    @stop_time = StopTime.find(params[:id])

    respond_to do |format|
      if @stop_time.update_attributes(params[:stop_time])
        format.html { redirect_to @stop_time, notice: 'Stop time was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stop_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stop_times/1
  # DELETE /stop_times/1.json
  def destroy
    @stop_time = StopTime.find(params[:id])
    @stop_time.destroy

    respond_to do |format|
      format.html { redirect_to stop_times_url }
      format.json { head :no_content }
    end
  end
end
