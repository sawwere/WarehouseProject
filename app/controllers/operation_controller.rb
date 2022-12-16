class OperationController < ApplicationController

  def create
    @user_id = session[:user_id]
    @user = Agent.find(@user_id)
    @good = Good.find_by_nomenclature(params[:operation][:good])
    @wh = Warehouse.find_by_name(params[:operation][:wh])
    @typeop = params[:operation][:typeop]
    @quantity = params[:operation][:quantity]
    @price = params[:operation][:price]
    @op_date = params[:operation][:op_date]

    p @op_date
    @hs = {good_id: @good.id,
                        agent_id: @user.id,
           warehouse_id: @wh.id,
                        typeop: @typeop,
                        quantity: @quantity,
                        price: @price,
                        op_date: @op_date}
    @op = Operation.new(@hs)
    if @op.save
      flash[:success] = "Operation committed"
    end
  end

  def operation_params
    #@hs.require(:operation).permit(:ag_id, :wh_id, :goods_id, :typeop, :quantity, :price, :op_date)
    #params.require(:operation).permit(:wh_id, :goods_id, :typeop, :quantity, :price, :op_date)
  end

  def history
    @operations = Operation.all
  end
end
