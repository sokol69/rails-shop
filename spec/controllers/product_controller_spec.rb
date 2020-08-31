require 'rails_helper'

RSpec.describe ProductController, type: :controller do
  describe 'GET #show' do
    let(:product) { :product }

    subject { get :show, params: { id: product.id } }

    context 'show product' do
      it 'render show product' do
        is_expected.to render_template :show
      end
    end
  end
end
