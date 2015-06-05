class PersonController < ApplicationController

  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @forms = Form.all
    @person = Person.new
    @array = Array.new
  end

  def create
     
     @person_params = params.permit(:array_data, :status, :order)
    @person = Person.new(@person_params)
      if @person.save
        redirect_to(person_index_path)
      else
        render 'new_person'
      end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
      if @person.update_attributes(person_params)
        redirect_to(person_index_path)
      else
        render 'edit_person'
      end
  end

  def destroy
    @person = Person.find(params[:id])
      if @person.destroy
         redirect_to(person_index_path)
      else 
        render 'person_index'
      end
  end

  private

  def person_params
    person_params.(:person).permit(:array_data, :status, :order)
  end

end

