require 'rails_helper'

RSpec.describe Student, type: :model do
  describe "Testing user input with nil and minimum length constrains" do

    context "Testing columns with nil value for individual column" do
      it 'Should not save if first_name is nil ' do
        student = Student.new(last_name: "G",email: "mtpharishgoku@gmail.com",rank: 4,:year_of_passing => 2024)
        expect(student.save).to eq(false)
      end
      it 'Should not save if last_name is nil ' do
        student = Student.new(first_name: "Harish Gokul",email: "mtpharishgoku@gmail.com",rank: 4,:year_of_passing => 2024)
        expect(student.save).to eq(false)
      end
      it 'Should not save if email is nil ' do
        student = Student.new(first_name: "Harish Gokul",last_name: "G",rank: 4,:year_of_passing => 2024)
        expect(student.save).to eq(false)
      end

      it 'Should not save if Rank is nil ' do
        student = Student.new(first_name: "Harish Gokul",last_name: "G",email: "mtpharishgoku@gmail.com",year_of_passing: 2024)
        expect(student.save).to eq(false)
      end

      it 'Should not save if year_of_passing is nil ' do
        student = Student.new(first_name: "Harish Gokul",last_name: "G",email: "mtpharishgoku@gmail.com",rank: 4)
        expect(student.save).to eq(false)
      end

    end

    context "Testing constrains for each parameter" do
      let(:student) { Student.new(first_name: "Hari",last_name: "",email: "harish@gmail",year_of_passing: "",rank:"")}

      it "Testing minimum length of first name" do
        expect(student.save).to eq(false)
      end
      it "Testing minimum length of Last name" do
        expect(student.save).to eq(false)
      end
      it "Testing minimum length of email" do
        expect(student.save).to eq(false)
      end
      it "Testing minimum length of Year of passing" do
        expect(student.save).to eq(false)
      end
      it "Testing minimum length of Rank" do
        expect(student.save).to eq(false)
      end
    end

  end
end
