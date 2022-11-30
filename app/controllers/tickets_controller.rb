
class TicketsController < ApplicationController
  before_action :find_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @tickets = Ticket.all.order("created_at DESC")
  end

  def show
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
  end

  def update

  end

  def destroy

  end

  private

  def ticket_params
    params.require(:ticket).permit(:name, :email, :address, :phone)
  end

  def find_ticket
    @ticket = Ticket.find(params[:id])
  end

end
