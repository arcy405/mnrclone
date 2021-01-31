class RealestateController < ApplicationController
    def index
        @Realestates=Realestate.all
    end
end
