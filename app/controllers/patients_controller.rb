class PatientsController < ApplicationController

    def create
      patient = Patient.new(patient_params)
      patient.user_id = current_user.id
      #patient.name = 
      #patient.comment =  
    end 

    def new
      @patient = Patient.new
    end 
  
    def update
      @patient = Patient.find(params[:id])
      @patient.update(patient_params)
      if (@patient.save)
        redirect_to current_user
      end
    end
    def edit 

    end

    def destroy
        patient = Patient.find(params[:id])
        patient.destroy
        redirect_to current_user

    end

    private 
    
    def patient_params
        params.require(:name).permit(:comment)
    end


  end