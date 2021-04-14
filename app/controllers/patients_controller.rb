class PatientsController < ApplicationController

    def new
      @patient = Patient.new
    end 

    def create
        @patient = Patient.new(patient_params)
        @patient.user_id = current_user.id
        if @patient.save
          flash.notice = "Patient added"
          redirect_to current_user
        end
    end 
  
    def update
      @patient = Patient.find(params[:id])
      @patient.update(patient_params)
      if (@patient.save)
        flash.notice = "patient successfully updated"
        redirect_to current_user
      end
    end
  
    def edit 
      @patient = Patient.find(params[:id])

    end

    def destroy
        patient = Patient.find(params[:id])
        patient.destroy
        redirect_to current_user

    end

    private 
    
    def patient_params
      params.require(:patient).permit(:name, :comment)
    end


  end