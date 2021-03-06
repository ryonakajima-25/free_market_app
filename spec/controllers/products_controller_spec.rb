require 'rails_helper'

describe ProductsController, type: :controller do
  describe 'POST #create' do
    it 'saves the new product in the database' do
      expect{post :create, params}
    end
  end

  describe 'GET #show' do
    it "renders the :show template" do
      expect(assigns(:product))
    end
  end

  describe 'DELETE #destroy' do
    it "deletes the product" do
      expect{delete :destroy, id: product}
    end
  end

  describe 'GET #index' do
    it "assigns the requested tweet to @ladies_product" do
      ladies_product = create(:product)
      get :index
      expect(assigns(:ladies_product)[0]).to eq ladies_product
    end

    it "renders the :index template？" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe '#update' do
    it '名前が更新される' do
      @product = FactoryBot.create(:product)
      @user = User.find(@product.user_id)
      login @user
      params = { product: attributes_for(:product)}
      params[:id] = @product.id
      params[:product][:name] = "ナイキシューズ"
      patch :update, params: params
      expect(@product.reload.name).not_to eq "ターサージール6"
    end
  end
end