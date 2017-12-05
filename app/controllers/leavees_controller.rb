class LeaveesController < ApplicationController
  before_action :set_leavee, only: [:show, :edit, :update, :destroy]

  # GET /leavees
  # GET /leavees.json
  def index
    @leavees = Leavee.paginate(:page => params[:page], :per_page => 4)
  end

  # GET /leavees/1
  # GET /leavees/1.json
  def show
  end

  # GET /leavees/new
  def new
    @employee = Employee.find_by(id:params[:employee_id])
    @leavee = Leavee.new
  end

  # GET /leavees/1/edit
  def edit
  end

  # POST /leavees
  # POST /leavees.json
  def create
    @employee = Employee.find_by(id:params[:employee_id])
    @leavee = @employee.leavees.new(leavee_params)

    respond_to do |format|
      if @leavee.save
        format.html { redirect_to employer_employee_leavees_path, notice: 'Leavee was successfully created.' }
        format.json { render :show, status: :created, location: @leavee }
      else
        format.html { render :new }
        format.json { render json: @leavee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leavees/1
  # PATCH/PUT /leavees/1.json
  def update
    respond_to do |format|
      if @leavee.update(leavee_params)
        format.html { redirect_to @leavee, notice: 'Leavee was successfully updated.' }
        format.json { render :show, status: :ok, location: @leavee }
      else
        format.html { render :edit }
        format.json { render json: @leavee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leavees/1
  # DELETE /leavees/1.json
  def destroy
    @leavee.destroy
    respond_to do |format|
      format.html { redirect_to employer_employee_leavee_url, notice: 'Leavee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leavee
      @leavee = Leavee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leavee_params
      params.require(:leavee).permit(:leave_from_date, :leave_to_date, :reason, :no_of_days, :employee_id )
    end
end
