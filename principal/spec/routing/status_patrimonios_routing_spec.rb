# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StatusPatrimoniosController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/status_patrimonios').to route_to('status_patrimonios#index')
    end

    it 'routes to #new' do
      expect(get: '/status_patrimonios/new').to route_to('status_patrimonios#new')
    end

    it 'routes to #show' do
      expect(get: '/status_patrimonios/1').to route_to('status_patrimonios#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/status_patrimonios/1/edit').to route_to('status_patrimonios#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/status_patrimonios').to route_to('status_patrimonios#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/status_patrimonios/1').to route_to('status_patrimonios#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/status_patrimonios/1').to route_to('status_patrimonios#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/status_patrimonios/1').to route_to('status_patrimonios#destroy', id: '1')
    end
  end
end
