class CustomersController < ActionController::API

  def create
    customer = Customer.new(customer_params)
    if customer.save
       render json: { status: 'success11111', data: customer }
    else
      render json: { status: 'error', data: customer.errors }
    end
  end

  def index 
    customer = Customer.all
    render json: customer
  end

  def show
    customer = Customer.find(params[:id])
    render json: customer
  end

  def update
    customer = Customer.find(params[:id])
    if customer.update(customer_params)
      render json: { status: 'success11111', data: customer }
    else
      render json: { status: 'error', data: customer.errors }
    end
  end

  def destroy
    customer = Customer.find(params[:id])
    if customer.destroy
      render json: { status: 'success11111'}
    else
      render json: { status: 'error', data: customer.errors }
    end
  end

  private
  def customer_params
    puts(params) 
    #  params.require(:customer).permit(:name, :age, :sex, :memo) ←viewにてmodelを指定してる場合
    params.permit(:name, :age, :sex, :memo) 

  end

end