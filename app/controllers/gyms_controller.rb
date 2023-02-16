class GymsController < ApplicationController
    before_action :set_gym, only: %i[ show edit update destroy ]
    def index
        @gyms = Gym.all
    end






end