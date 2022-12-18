class OperationController < ApplicationController
  before_action :authenticate_agent!
  def create
    @user_id = session[:user_id]
    @user = Agent.find(@user_id)
    @good = Good.find_by_nomenclature(params[:operation][:good])
    @wh = Warehouse.find_by_name(params[:operation][:wh])
    @typeop = TypeOperation.find_by_title(params[:operation][:typeop])
    @quantity = params[:operation][:quantity]
    @price = params[:operation][:price]
    @op_date = params[:operation][:op_date]
    @hs = {good_id: @good.id,
           agent_id: @user.id,
           warehouse_id: @wh.id,
           type_operation_id: @typeop.id,
           quantity: @quantity,
           price: @price,
           op_date: @op_date}
    Operation.create(@hs)
    # TODO Сделать перенапрвление на другую страницу(ошибка с добавлением, нужно постоянно обновлять страницу)
    redirect_to "/manage_operations"
  end

  def operation_params
    #@hs.require(:operation).permit(:ag_id, :wh_id, :goods_id, :typeop, :quantity, :price, :op_date)
    #params.require(:operation).permit(:wh_id, :goods_id, :typeop, :quantity, :price, :op_date)
  end

  def history
    @operations = Operation.where(agent_id: session[:user_id])
  end

end
