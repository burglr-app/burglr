require 'rails_helper'

RSpec.describe RecipesController, type: :controller do
  describe 'GET #index' do
    it 'return success' do
      get :index
      expect(response).to be_successful
    end

    it 'renders the correct view' do
      get :index
      expect(response).to render_template :index
    end

    it 'renders the correct view' do
      get :index
      expect(assigns(:recipes)).to eq(Recipe.all)
    end
  end

  describe 'GET #new' do
    it 'return success' do
      get :new
      expect(response).to be_successful
    end

    it 'renders the correct view' do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #show' do
    let(:recipe) { create :recipe }

    it 'return success' do
      get :show, params: { id: recipe.id }
      expect(response).to be_successful
    end

    it 'renders the correct view' do
      get :show, params: { id: recipe.id }
      expect(response).to render_template :show
    end
  end

  describe 'GET #edit' do
    let(:recipe) { create :recipe }

    it 'return success' do
      get :edit, params: { id: recipe.id }
      expect(response).to be_successful
    end

    it 'renders the correct view' do
      get :edit, params: { id: recipe.id }
      expect(response).to render_template :edit
    end
  end

  describe 'POST #create' do
    it 'redirect to recipe path' do
      post :create, params: { recipe: { title: 'recipe' } }
      expect(response.status).to eq(302)
    end

    it 'assign created recipe' do
      post :create, params: { recipe: { title: 'recipe' } }
      expect(assigns(:recipe)).to be_a(Recipe)
    end

    it 'when the record has errors render new again' do
      post :create, params: { recipe: { title: '' } }
      expect(response).to render_template :new
    end
  end

  describe 'PUT #update' do
    let(:recipe) { create :recipe }

    it 'redirect to recipe path' do
      patch :update, params: { id: recipe.id, recipe: { title: recipe.title } }
      expect(response).to redirect_to recipe_path(recipe)
    end

    it 'assign updated recipe' do
      patch :update, params: { id: recipe.id, recipe: { title: recipe.title } }
      expect(assigns(:recipe)).to be_a(Recipe)
    end

    it 'when the record has errors render edit again' do
      patch :update, params: { id: recipe.id, recipe: { title: '' } }
      expect(response).to render_template :edit
    end
  end
end
