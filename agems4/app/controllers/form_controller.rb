class FormController < ApplicationController
  def index
    @forms = Form.all
  end

  def show
    @form = Form.find(params[:id])
  end

  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
      if @form.save
        redirect_to(form_index_path)
      else
        render 'new_form'
      end
  end

  def edit
    @form = Form.find(params[:id])
  end

  def update
    @form = Form.find(params[:id])
      if @form.update_attributes(form_params)
        redirect_to(form_index_path)
      else
        render 'edit_form'
      end
  end

  def destroy
    @form = Form.find(params[:id])
      if @form.destroy
         redirect_to(form_index_path)
      else 
        render 'form_index'
      end
  end

  private

  def form_params
    form_params.require(:form).permit(:label, :field_type, :order, :information_type)
  end
end


