#carrega o rspec
require "rails_helper"

RSpec.describe ContactsController, type: :controller do
  #Deixando a variável global como se fosse @user
  #Mock da classe usuário
  let(:user) { build_stubbed(:user) }

  before do
    sign_in_mock_user(user)
  end

  describe "Action" do
    describe "GET Index" do
      it "renders the index template" do
        #Método HTTP get
        get :index
        expect(response).to render_template("index")
      end
    end
  end

end
