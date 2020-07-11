class InvoiceController < ApplicationController
  def show
    @invoice = Client.find(params[:id])
  end
end
