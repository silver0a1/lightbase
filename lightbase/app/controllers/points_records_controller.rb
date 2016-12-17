class PointsRecordsController < ApplicationController
  before_action :set_points_record, only: [:show, :edit, :update, :destroy]

  # GET /points_records
  # GET /points_records.json
  def index
    @points_records = PointsRecord.all
  end

  # GET /points_records/1
  # GET /points_records/1.json
  def show
  end

  # GET /points_records/new
  def new
    @points_record = PointsRecord.new
  end

  # GET /points_records/1/edit
  def edit
  end

  # POST /points_records
  # POST /points_records.json
  def create
    @points_record = PointsRecord.new(points_record_params)

    respond_to do |format|
      if @points_record.save
        format.html { redirect_to @points_record, notice: 'Points record was successfully created.' }
        format.json { render :show, status: :created, location: @points_record }
      else
        format.html { render :new }
        format.json { render json: @points_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /points_records/1
  # PATCH/PUT /points_records/1.json
  def update
    respond_to do |format|
      if @points_record.update(points_record_params)
        format.html { redirect_to @points_record, notice: 'Points record was successfully updated.' }
        format.json { render :show, status: :ok, location: @points_record }
      else
        format.html { render :edit }
        format.json { render json: @points_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /points_records/1
  # DELETE /points_records/1.json
  def destroy
    @points_record.destroy
    respond_to do |format|
      format.html { redirect_to points_records_url, notice: 'Points record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_points_record
      @points_record = PointsRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def points_record_params
      params.require(:points_record).permit(:user_id, :value, :created_at)
    end
end
