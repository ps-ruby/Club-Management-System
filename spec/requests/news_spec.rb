require 'rails_helper'

RSpec.describe NewsController, type: :controller do
  describe 'News controller request specs' do
    # binding.pry
    login_user

    context 'GET #index' do
      it 'should success and render to index page' do
        get :index
        expect(response).to have_http_status(200)
        expect(response).to render_template :index
      end
    end

    context 'GET #new' do
      it 'should success and render to new page' do
        get :new
        expect(response).to have_http_status(200)
        expect(response).to render_template :new
      end
    end

    context 'GET #edit' do
      let!(:news) { FactoryBot.create(:news) }
      it 'should success and render to edit page' do
        get :edit, params: { id: news.id}
        expect(response).to have_http_status(200)
        expect(response).to render_template :edit
      end
    end

    # context 'POST #create' do
    #   it 'should create an event and display a success notice' do
    #     params =   {
    #         titl: "New Events",
    #         body: "<div>Ruby on Rails is not a minimalist framework, ...",
    #         image: "/assets/images/bg.jpg"
    #     }
    #     expect { post(:create, params: { news: params }) }.to change(News, :count).by(1)
    #     expect(flash[:notice]).to eq 'News was successfully created.'
    #   end
    # end

    context 'GET #show' do
      let!(:news) { FactoryBot.create(:news) }
      it 'should display the details of a particular news' do
        get :show, params: { id: news.id }
        expect(response).to have_http_status(200)
        expect(response).to render_template :show
      end
    end

    context 'PUT #update' do
      let!(:news) { FactoryBot.create(:news) }
      it 'should update an existing news and display a success notice' do
        params = {
            title: 'Test News Updated',
        }
        put(:update, params: { id: news.id, news: params })
        news.reload
        params.keys.each do |key|
          expect(news.attributes[key.to_s]).to eq params[key]
        end
        expect(flash[:notice]).to eq 'News was successfully updated.'
      end
    end

    context 'DELETE #destroy' do
      let!(:news) { FactoryBot.create(:news) }
      it 'should delete a news and display a success notice' do
        expect { delete :destroy, params: { id: news.id } }.to change(News, :count).by(-1)
        expect(flash[:notice]).to eq 'News was successfully destroyed.'
      end
    end
  end
end