require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "Attributes" do
    it { should have_db_column(:title).of_type(:string) }
    it { should have_db_column(:body).of_type(:text) }
    it { should have_db_column(:status).of_type(:string) }
  end

  describe "Associations" do
    it { should have_many(:comments).dependent(:destroy) }
  end

  describe "Methods" do
    describe "#public_count" do
      let!(:article_1) { Article.create!(title: 'Article 1', body: 'article 1111111', status: 'public') }
      let!(:article_2) { Article.create!(title: 'Article 2', body: 'article 22222222', status: 'private') }

      it do
        expect(Article.public_count).to eq 1
      end
    end

    describe "#public_count 2" do
      let!(:article_1) { Article.create!(title: 'Article 1', body: 'article 1111111', status: 'public') }
      let!(:article_2) { Article.create!(title: 'Article 2', body: 'article 22222222', status: 'private') }
      let!(:article_3) { Article.create!(title: 'Article 3', body: 'article 33333333', status: 'public') }

      it do
        expect(Article.public_count).to eq 2
      end
    end

    describe "#public_count 3" do
      let!(:article_1) { Article.create!(title: 'Article 1', body: 'article 1111111', status: 'public') }
      let!(:article_2) { Article.create!(title: 'Article 2', body: 'article 22222222', status: 'private') }
      let!(:article_3) { Article.create!(title: 'Article 3', body: 'article 33333333', status: 'public') }
      let!(:article_4) { Article.create!(title: 'Article 4', body: 'article 44444444', status: 'public') }

      it do
        expect(Article.public_count).to eq 3
      end
    end

    describe "#public_count 4" do
      let!(:article_1) { Article.create!(title: 'Article 1', body: 'article 1111111', status: 'public') }
      let!(:article_2) { Article.create!(title: 'Article 2', body: 'article 22222222', status: 'private') }
      let!(:article_3) { Article.create!(title: 'Article 3', body: 'article 33333333', status: 'public') }
      let!(:article_4) { Article.create!(title: 'Article 4', body: 'article 44444444', status: 'public') }
      let!(:article_5) { Article.create!(title: 'Article 5', body: 'article 55555555', status: 'public') }

      it do
        expect(Article.public_count).to eq 4
      end
    end

    describe "#public_count 5" do
      let!(:article_1) { Article.create!(title: 'Article 1', body: 'article 1111111', status: 'public') }
      let!(:article_2) { Article.create!(title: 'Article 2', body: 'article 22222222', status: 'private') }
      let!(:article_3) { Article.create!(title: 'Article 3', body: 'article 33333333', status: 'public') }
      let!(:article_4) { Article.create!(title: 'Article 4', body: 'article 44444444', status: 'public') }
      let!(:article_5) { Article.create!(title: 'Article 5', body: 'article 55555555', status: 'public') }
      let!(:article_6) { Article.create!(title: 'Article 6', body: 'article 66666666', status: 'public') }

      it do
        expect(Article.public_count).to eq 5
      end
    end
  end
end