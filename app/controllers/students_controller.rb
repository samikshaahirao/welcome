class StudentsController < ApplicationController
	before_action :set_student, only: %i[ show edit update destroy ]

	def index
		@students = Student.all
	end
	
	def show
  end
	
	def edit
  end

	def new
    @student = Student.new
  end

	def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to student_url(@student), notice: "Student was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
        
      end
    end
  end

	def destroy
    @student.destroy

    respond_to do |format|
      format.html { redirect_to students_url, notice: "Student was successfully destroyed." }
      
    end
  end

	def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to student_url(@student), notice: "Student was successfully created." }
        
      else
        format.html { render :new, status: :unprocessable_entity }
       
      end
    end
  end


	private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end
		def student_params
      params.require(:student).permit(:first_name, :last_name, :standard,:age)
    end
end  