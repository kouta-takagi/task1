class DepartmentsController < ApplicationController
  # https://zenn.dev/gottsu/articles/914d45332450a3
  def index
    @departments = Department.includes(:employees)
  end
end
