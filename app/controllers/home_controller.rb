class HomeController < ApplicationController

# GET ALL CUSTOMERS

def customer
  @customers = Customer.all

end


def about
  puts "this is the about page"

end


def delete
  customer = Customer.find(params[:id])
  customer.delete
  puts "deleted successfully"
  redirect_to root_path, notice: 'Customer was successfully deleted.'

end


  def addCustomer
    first_name = params[:fname]
    last_name = params[:lname]
    email = params[:email]
    job = params[:job]
    description = params[:description]

    customer = Customer.new(firstname: first_name, lastname: last_name, email: email, job: job, description: description)

    if customer.save
      redirect_to root_path, notice: 'Customer was successfully created.'
    
    else
      redirect_to root_path, alert: 'Failed to create customer.'
    end
    
  end
end
