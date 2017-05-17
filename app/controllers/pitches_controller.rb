class PitchesController < ApplicationController
  before_action :set_pitch, only: [:show, :edit, :update, :destroy]

  # GET /pitches
  # GET /pitches.json
  def index
    @pitches = Pitch.all
  end

  # GET /pitches/1
  # GET /pitches/1.json
  def show

  end

  # GET /pitches/new
  def new
    @pitch = Pitch.new
  end

  # GET /pitches/1/edit
  def edit
  end
  #Given any single pitch, it shows its active schedule


  # POST /pitches
  # POST /pitches.json
  def create
    @pitch = Pitch.new(pitch_params)

    respond_to do |format|
      if @pitch.save
        format.html { redirect_to @pitch, notice: 'Pitch was successfully created.' }
        format.json { render :show, status: :created, location: @pitch }
      else
        format.html { render :new }
        format.json { render json: @pitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pitches/1
  # PATCH/PUT /pitches/1.json
  def update
    respond_to do |format|
      if @pitch.update(pitch_params)
        format.html { redirect_to @pitch, notice: 'Pitch was successfully updated.' }
        format.json { render :show, status: :ok, location: @pitch }
      else
        format.html { render :edit }
        format.json { render json: @pitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pitches/1
  # DELETE /pitches/1.json
  def destroy
    @pitch.destroy
    respond_to do |format|
      format.html { redirect_to pitches_url, notice: 'Pitch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def get_schedule
    @schedule = Schedule.where("monthday = ? and pitch_id = ?", params[:day], params[:pitch_id])
    render json: @schedule[0]
  end

  private
  # Use callbacks to share common setup or constraints between actions.

  def set_pitch
    @pitch = Pitch.find(params[:id])
  end
  #Load the time table from the db to an array
  def load_hours
    @day = Schedule.first
    @hours = Array.new(48)

    @hours[0] =@day.h0
    @hours[1] =@day.h1
    @hours[2] =@day.h2
    @hours[3] =@day.h3
    @hours[4] =@day.h4
    @hours[5] =@day.h5
    @hours[6] =@day.h6
    @hours[7] =@day.h7
    @hours[8] =@day.h8
    @hours[9] =@day.h9
    @hours[10]=@day.h10
    @hours[11]=@day.h11
    @hours[12]=@day.h12
    @hours[13]=@day.h13
    @hours[14]=@day.h14
    @hours[15]=@day.h15
    @hours[16]=@day.h16
    @hours[17]=@day.h17
    @hours[18]=@day.h18
    @hours[19]=@day.h19
    @hours[20]=@day.h20
    @hours[21]=@day.h21
    @hours[22]=@day.h22
    @hours[23]=@day.h23
    @hours[24]=@day.h24
    @hours[25]=@day.h25
    @hours[26]=@day.h26
    @hours[27]=@day.h27
    @hours[28]=@day.h28
    @hours[29]=@day.h29
    @hours[30]=@day.h30
    @hours[31]=@day.h31
    @hours[32]=@day.h32
    @hours[33]=@day.h33
    @hours[34]=@day.h34
    @hours[35]=@day.h35
    @hours[36]=@day.h36
    @hours[37]=@day.h37
    @hours[38]=@day.h38
    @hours[39]=@day.h39
    @hours[40]=@day.h40
    @hours[41]=@day.h41
    @hours[42]=@day.h42
    @hours[43]=@day.h43
    @hours[44]=@day.h44
    @hours[45]=@day.h45
    @hours[46]=@day.h46
    @hours[47]=@day.h47

    return @hours
  end

  #Still under construction. Not sure how to proceed
  def save_hours
    @day = Schedule.find(params[:monthday])

    @pitch.schedule.h0 =  hours[0]
    @pitch.schedule.h1 =  hours[1]
    @pitch.schedule.h2 =  hours[2]
    @pitch.schedule.h3 =  hours[3]
    @pitch.schedule.h4 =  hours[4]
    @pitch.schedule.h5 =  hours[5]
    @pitch.schedule.h6 =  hours[6]
    @pitch.schedule.h7 =  hours[7]
    @pitch.schedule.h8 =  hours[8]
    @pitch.schedule.h9 =  hours[9]
    @pitch.schedule.h10 = hours[10]
    @pitch.schedule.h11 = hours[11]
    @pitch.schedule.h12 = hours[12]
    @pitch.schedule.h13 = hours[13]
    @pitch.schedule.h14 = hours[14]
    @pitch.schedule.h15 = hours[15]
    @pitch.schedule.h16 = hours[16]
    @pitch.schedule.h17 = hours[17]
    @pitch.schedule.h18 = hours[18]
    @pitch.schedule.h19 = hours[19]
    @pitch.schedule.h20 = hours[20]
    @pitch.schedule.h21 = hours[21]
    @pitch.schedule.h22 = hours[22]
    @pitch.schedule.h23 = hours[23]
    @pitch.schedule.h24 = hours[24]
    @pitch.schedule.h25 = hours[25]
    @pitch.schedule.h26 = hours[26]
    @pitch.schedule.h27 = hours[27]
    @pitch.schedule.h28 = hours[28]
    @pitch.schedule.h29 = hours[29]
    @pitch.schedule.h30 = hours[30]
    @pitch.schedule.h31 = hours[31]
    @pitch.schedule.h32 = hours[32]
    @pitch.schedule.h33 = hours[33]
    @pitch.schedule.h34 = hours[34]
    @pitch.schedule.h35 = hours[35]
    @pitch.schedule.h36 = hours[36]
    @pitch.schedule.h37 = hours[37]
    @pitch.schedule.h38 = hours[38]
    @pitch.schedule.h39 = hours[39]
    @pitch.schedule.h40 = hours[40]
    @pitch.schedule.h41 = hours[41]
    @pitch.schedule.h42 = hours[42]
    @pitch.schedule.h43 = hours[43]
    @pitch.schedule.h44 = hours[44]
    @pitch.schedule.h45 = hours[45]
    @pitch.schedule.h46 = hours[46]
    @pitch.schedule.h47 = hours[47]

    return hours
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def pitch_params
    params.require(:pitch).permit(:name, :normal_price, :special_price, :active, :other, :type, :url1, :url2, :url3, :entity_id)
  end
end
