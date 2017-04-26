require 'rails_helper'

RSpec.describe Contact, type: :model do

  it "should have a factory" do
    expect(FactoryGirl.build(:contact)).to be_valid
    #be_valid executa as validações do model
  end

  context "Should raise an error without a field" do
    it "with nome" do
      contact = FactoryGirl.build(:contact)
      contact.nome = nil
      expect(contact.valid?).to be_falsey
    end
    it "return a message: 'não pode ficar em branco'" do
      contact = FactoryGirl.build(:contact)
      contact.nome = nil
      contact.save
      expect(contact.errors.messages[:nome]).to include("não pode ficar em branco")
    end
  end

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
