class AgentsController < ApplicationController
    def index
        @agents=Agent.order('created_at DESC')
    end
end
