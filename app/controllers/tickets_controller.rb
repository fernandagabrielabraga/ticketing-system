
class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all.order("created_at DESC")
  end

  def new
    @ticket = Ticket.new
  end

  def create #action to create it does not have a view
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      redirect_to tickets_path
    else
      render 'new'
    end

  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])
    @ticket.update(ticket_params)
    redirect_to tickets_path
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    redirect_to tickets_path, status: :see_other
  end

  private

  def ticket_params
    params.require(:ticket).permit(:name, :email, :address, :phone)
  end

end
