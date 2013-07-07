module Admin
  class FiltersController < ApplicationController
    def edit
      @university_filter = Parameter.find_by_vc_parameter_code('university_filter')
      @school_filter = Parameter.find_by_vc_parameter_code('school_filter')
    end

    def update
      @parameter = Parameter.find_by_vc_parameter_code(params[:id])
      @parameter.renew_attributes(params).save

      redirect_to '/admins'
    end
  end
end