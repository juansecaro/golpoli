class FieldsController < ApplicationController
  before_action :set_field, only: [:show, :edit, :update, :destroy]

  # GET /fields
  # GET /fields.json
  def index
    @fields = Field.all
  end

  # GET /fields/1
  # GET /fields/1.json
  def show
    @timetable = load_hours
  end

  # GET /fields/new
  def new
    @field = Field.new
  end

  # GET /fields/1/edit
  def edit
  end
  #Given any single field, it shows its active schedule


  # POST /fields
  # POST /fields.json
  def create
    @field = Field.new(field_params)

    respond_to do |format|
      if @field.save
        format.html { redirect_to @field, notice: 'Field was successfully created.' }
        format.json { render :show, status: :created, location: @field }
      else
        format.html { render :new }
        format.json { render json: @field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fields/1
  # PATCH/PUT /fields/1.json
  def update
    respond_to do |format|
      if @field.update(field_params)
        format.html { redirect_to @field, notice: 'Field was successfully updated.' }
        format.json { render :show, status: :ok, location: @field }
      else
        format.html { render :edit }
        format.json { render json: @field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fields/1
  # DELETE /fields/1.json
  def destroy
    @field.destroy
    respond_to do |format|
      format.html { redirect_to fields_url, notice: 'Field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_field
      @field = Field.find(params[:id])
    end
    #Load the time table from the db to an array
    def load_hours
      @day = Field.schedules.find(params[:id])
      @hours = Array.new(48)

      @hours[0] =@field.schedule.h0
      @hours[1] =@field.schedule.h1
      @hours[2] =@field.schedule.h2
      @hours[3] =@field.schedule.h3
      @hours[4] =@field.schedule.h4
      @hours[5] =@field.schedule.h5
      @hours[6] =@field.schedule.h6
      @hours[7] =@field.schedule.h7
      @hours[8] =@field.schedule.h8
      @hours[9] =@field.schedule.h9
      @hours[10]=@field.schedule.h10      
      @hours[11]=@field.schedule.h11     
      @hours[12]=@field.schedule.h12
      @hours[13]=@field.schedule.h13
      @hours[14]=@field.schedule.h14
      @hours[15]=@field.schedule.h15
      @hours[16]=@field.schedule.h16
      @hours[17]=@field.schedule.h17
      @hours[18]=@field.schedule.h18
      @hours[19]=@field.schedule.h19
      @hours[20]=@field.schedule.h20
      @hours[21]=@field.schedule.h21
      @hours[22]=@field.schedule.h22
      @hours[23]=@field.schedule.h23
      @hours[24]=@field.schedule.h24
      @hours[25]=@field.schedule.h25
      @hours[26]=@field.schedule.h26
      @hours[27]=@field.schedule.h27
      @hours[28]=@field.schedule.h28
      @hours[29]=@field.schedule.h29
      @hours[30]=@field.schedule.h30
      @hours[31]=@field.schedule.h31
      @hours[32]=@field.schedule.h32
      @hours[33]=@field.schedule.h33
      @hours[34]=@field.schedule.h34
      @hours[35]=@field.schedule.h35
      @hours[36]=@field.schedule.h36
      @hours[37]=@field.schedule.h37
      @hours[38]=@field.schedule.h38
      @hours[39]=@field.schedule.h39
      @hours[40]=@field.schedule.h40
      @hours[41]=@field.schedule.h41
      @hours[42]=@field.schedule.h42
      @hours[43]=@field.schedule.h43
      @hours[44]=@field.schedule.h44
      @hours[45]=@field.schedule.h45
      @hours[46]=@field.schedule.h46
      @hours[47]=@field.schedule.h47

      return @hours
    end

#Still under construction. Not sure how to proceed
    def save_hours

      @field.schedule.h0 =  hours[0]
      @field.schedule.h1 =  hours[1]
      @field.schedule.h2 =  hours[2]
      @field.schedule.h3 =  hours[3]
      @field.schedule.h4 =  hours[4]
      @field.schedule.h5 =  hours[5]
      @field.schedule.h6 =  hours[6]
      @field.schedule.h7 =  hours[7]
      @field.schedule.h8 =  hours[8]
      @field.schedule.h9 =  hours[9]
      @field.schedule.h10 = hours[10]      
      @field.schedule.h11 = hours[11]     
      @field.schedule.h12 = hours[12]
      @field.schedule.h13 = hours[13]
      @field.schedule.h14 = hours[14]
      @field.schedule.h15 = hours[15]
      @field.schedule.h16 = hours[16]
      @field.schedule.h17 = hours[17]
      @field.schedule.h18 = hours[18]
      @field.schedule.h19 = hours[19]
      @field.schedule.h20 = hours[20]
      @field.schedule.h21 = hours[21]
      @field.schedule.h22 = hours[22]
      @field.schedule.h23 = hours[23]
      @field.schedule.h24 = hours[24]
      @field.schedule.h25 = hours[25]
      @field.schedule.h26 = hours[26]
      @field.schedule.h27 = hours[27]
      @field.schedule.h28 = hours[28]
      @field.schedule.h29 = hours[29]
      @field.schedule.h30 = hours[30]
      @field.schedule.h31 = hours[31]
      @field.schedule.h32 = hours[32]
      @field.schedule.h33 = hours[33]
      @field.schedule.h34 = hours[34]
      @field.schedule.h35 = hours[35]
      @field.schedule.h36 = hours[36]
      @field.schedule.h37 = hours[37]
      @field.schedule.h38 = hours[38]
      @field.schedule.h39 = hours[39]
      @field.schedule.h40 = hours[40]
      @field.schedule.h41 = hours[41]
      @field.schedule.h42 = hours[42]
      @field.schedule.h43 = hours[43]
      @field.schedule.h44 = hours[44]
      @field.schedule.h45 = hours[45]
      @field.schedule.h46 = hours[46]
      @field.schedule.h47 = hours[47]

      return hours
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def field_params
      params.require(:field).permit(:name, :normal_price, :special_price, :active, :other, :type, :url1, :url2, :url3, :entity_id)
    end
end
