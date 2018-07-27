# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe Recursoshumanos::VinculosController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Recursoshumanos::Vinculo. As you add validations to Recursoshumanos::Vinculo, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    { data_inicio: '2018-02-01', data_fim: '2018-02-01', recursoshumanos_cargo_id: FactoryBot.create(:recursoshumanos_cargo).to_param, pessoas_id: FactoryBot.create(:pessoa).to_param }
  end

  let(:invalid_attributes) do
    { data_inicio: '', data_fim: '', recursoshumnanos_cargo_id: nil, pessoas_id: nil }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Recursoshumanos::VinculosController. Be sure to keep this updated too.
  stub_sign_in
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      vinculo = Recursoshumanos::Vinculo.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      vinculo = Recursoshumanos::Vinculo.create! valid_attributes
      get :show, params: { id: vinculo.to_param }, session: valid_session
      expect(response).to be_success
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe 'GET #edit' do
    it 'returns a success response' do
      vinculo = Recursoshumanos::Vinculo.create! valid_attributes
      get :edit, params: { id: vinculo.to_param }, session: valid_session
      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Recursoshumanos::Vinculo' do
        expect do
          post :create, params: { recursoshumanos_vinculo: valid_attributes }, session: valid_session
        end.to change(Recursoshumanos::Vinculo, :count).by(1)
      end

      it 'redirects to the created recursoshumanos_vinculo' do
        post :create, params: { recursoshumanos_vinculo: valid_attributes }, session: valid_session
        expect(response).to redirect_to(recursoshumanos_vinculos_path)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { recursoshumanos_vinculo: invalid_attributes }, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested recursoshumanos_vinculo' do
        vinculo = Recursoshumanos::Vinculo.create! valid_attributes
        put :update, params: { id: vinculo.to_param, recursoshumanos_vinculo: new_attributes }, session: valid_session
        vinculo.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the recursoshumanos_vinculo' do
        vinculo = Recursoshumanos::Vinculo.create! valid_attributes
        put :update, params: { id: vinculo.to_param, recursoshumanos_vinculo: valid_attributes }, session: valid_session
        expect(response).to redirect_to(recursoshumanos_vinculos_path)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'edit' template)" do
        vinculo = Recursoshumanos::Vinculo.create! valid_attributes
        put :update, params: { id: vinculo.to_param, recursoshumanos_vinculo: invalid_attributes }, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested recursoshumanos_vinculo' do
      vinculo = Recursoshumanos::Vinculo.create! valid_attributes
      delete :destroy, params: { id: vinculo.to_param }, session: valid_session
      vinculo.reload
      expect(vinculo.data_fim).to be_eql(Date.today)
    end

    it 'redirects to the recursoshumanos_vinculos list' do
      vinculo = Recursoshumanos::Vinculo.create! valid_attributes
      delete :destroy, params: { id: vinculo.to_param }, session: valid_session

      expect(response).to redirect_to(desligamento_recursoshumanos_vinculos_path)
    end
  end
end
