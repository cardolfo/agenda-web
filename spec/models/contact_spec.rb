require 'rails_helper'

RSpec.describe Contact, type: :model do
  context "Should Respond" do
    #should_respond serve para atributos
    it {should respond_to(:nome)}
    it {should respond_to(:email)}
    it {should respond_to(:cellphone)}
    it {should respond_to(:address)}
    it {should respond_to(:birthdate)}
  end

  context "Validations" do
    it {should validate_presence_of :nome}
    it {should validate_presence_of :cellphone}
    it {should validate_uniqueness_of :cellphone}
    it {should validate_presence_of :email}
    it {should validate_uniqueness_of :email}
    it {should validate_presence_of :birthdate}
  end
end
