module InvoiceHelper
    def get_client(client) # Get client info from database
        {"name" => client.client, "logo" => client.logo, "location" => client.location, "phone" => client.phone, "email" => client.email, "address" => client.address}
      end
    def get_invoice() # Define invoice/customer information
        {"invoice_no" => 1234567, "date" => "2017-12-16", "cus_id"=>"ABC12345", "name"=>"Orlando Bloom", "co_name"=>"Orlando's Flower Shop", "address"=>"17 Orlando St.", "location"=>"Orlando, Florida, 123456", "phone"=>"12345678910"}
    end
    def get_items()
        {"quantity" => [6,900,3], "description" =>["Contract Hours Completed","Colouring Books","Overpaid Hours"], "price" => [200, 8.5,-200]}
    end

end
module TextFilter
    def currency(input)
      new_frm = sprintf('$%0.2f',input).gsub(/(\d)(?=(\d\d\d)+(?!\d))/, "\\1,")
      if new_frm.include? "-"
        new_frm = new_frm.sub("-","(") + ")"
      end
      return new_frm
    end
  end
  Liquid::Template.register_filter(TextFilter)