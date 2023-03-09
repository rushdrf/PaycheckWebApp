require 'json'
require 'net/http'

class PaycheckController < ApplicationController
  def index
  end

  def generate_paycheck
    employee_name = params[:employee_name]
    annual_salary = params[:annual_salary]

    uri = URI("http://localhost:3000/api/v1/generatepaycheck")
    response = Net::HTTP.post(uri, { employee_name: employee_name, annual_salary: annual_salary }.to_json, "Content-Type" => "application/json")

    @paycheck = JSON.parse(response.body)
  end
end
