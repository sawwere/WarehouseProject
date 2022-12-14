class OperationController < ApplicationController

  def history
    @operations = Operation.all
  end
end
