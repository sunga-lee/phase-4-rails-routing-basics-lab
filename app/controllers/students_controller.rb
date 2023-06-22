class StudentsController < ApplicationController
    def index
        students = student.all
        render json: students
    end

    def grades
        students = Student.order(grade: :desc)
        render json: students

    end
    def highest_grade
        student = Student.order(grade: :desc).first
        render json: student
      end
end
