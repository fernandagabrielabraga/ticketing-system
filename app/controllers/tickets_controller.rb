
class TicketsController < ApplicationController

  def show
    @ticket = Ticket
    


    @qrcode = RQRCode::QRCode.new("https://dev.to/")
    @svg = @qrcode.as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 6
    )
  end

end
