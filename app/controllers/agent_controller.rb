class AgentController < ApplicationController

  def info
    @infos = Agent.all
  end

end
