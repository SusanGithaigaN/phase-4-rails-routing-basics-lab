class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.order(grade: :desc)
        render json: students
    end

    # retrieve student with highest grade
    # order in descending order, select first record(.first)
    def highest_grade
        students = Student.order(grade: :desc).first
        render json: students
    end
end
