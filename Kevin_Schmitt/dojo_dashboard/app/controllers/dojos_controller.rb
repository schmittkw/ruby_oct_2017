class DojosController < ApplicationController
  def new
    if session['error'].length>1
      @error =  session['error']
    end
    render 'dojos/new'
  end
  def create
    @dojo = Dojo.new(dojo_params)
    if @dojo.valid?
      session['error'] = ''
      @dojo.save
      redirect_to '/'
    elsif !@dojo.valid?
      session['error'] = 'Fields must be at least 2 characters'
      redirect_to '/new'
    end
  end
  def showone
    @one = Dojo.find(params[:id])
    render 'dojos/showone'
  end
  def delete
    go = Dojo.find(params[:id])
    go.delete
    return redirect_to '/'     #:back #goes back to previous page
  end
  def edit
    @one = Dojo.find(params[:id])
    render 'dojos/edit'
  end
  def update
    dj = Dojo.find(params[:id])
    dj.update(dojo_params)
    redirect_to '/'
  end
  def show   
    session['error'] = ''
    @count = Dojo.all.count
    @dojos = Dojo.all.order! 'created_at DESC'
    render 'dojos/show'
  end
  def new_student
    @dojo = Dojo.find(params[:id])
    render 'dojos/student_new'
  end
  def create_student
    puts params
    student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      dojo_id: params[:id]
    )
    puts student.valid?
    puts student.errors
    if student.valid?
      student.save
      return redirect_to '/' #goes back to previous page
    end
    return redirect_to :back
  end
  private
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city, :state)
    end
end
