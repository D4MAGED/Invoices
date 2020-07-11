module InvoiceHelper
    def get_client(client) # Get client info from database
        {"name" => client.client, "logo" => client.logo, "location" => client.location, "phone" => client.phone, "email" => client.email, "address" => client.address}
      end
    def get_invoice() # Define invoice/customer information
        {"invoice_no" => 1234567, "date" => "2017-12-16", "cus_id"=>"ABC12345", "name"=>"Orlando Bloom", "co_name"=>"Orlando's Flower Shop", "address"=>"17 Orlando St.", "location"=>"Orlando, Florida, 123456", "phone"=>"12345678910"}
    end
    def get_items()
        {"quantity" => [6,900], "description" =>["Contract Hours Completed","Colouring Books"], "price" => [200, 8.5]}
    end
end

