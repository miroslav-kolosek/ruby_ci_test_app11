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

    describe "#public_count 6" do
      let!(:article_1) { Article.create!(title: 'Article 1', body: 'article 1111111', status: 'public') }
      let!(:article_2) { Article.create!(title: 'Article 2', body: 'article 22222222', status: 'private') }
      let!(:article_3) { Article.create!(title: 'Article 3', body: 'article 33333333', status: 'public') }
      let!(:article_4) { Article.create!(title: 'Article 4', body: 'article 44444444', status: 'public') }
      let!(:article_5) { Article.create!(title: 'Article 5', body: 'article 55555555', status: 'public') }
      let!(:article_6) { Article.create!(title: 'Article 6', body: 'article 66666666', status: 'public') }
      let!(:article_7) { Article.create!(title: 'Article 7', body: 'article 77777777', status: 'public') }

      it do
        expect(Article.public_count).to eq 6
      end
    end

    describe "#public_count 7" do
      let!(:article_1) { Article.create!(title: 'Article 1', body: 'article 1111111', status: 'public') }
      let!(:article_2) { Article.create!(title: 'Article 2', body: 'article 22222222', status: 'private') }
      let!(:article_3) { Article.create!(title: 'Article 3', body: 'article 33333333', status: 'public') }
      let!(:article_4) { Article.create!(title: 'Article 4', body: 'article 44444444', status: 'public') }
      let!(:article_5) { Article.create!(title: 'Article 5', body: 'article 55555555', status: 'public') }
      let!(:article_6) { Article.create!(title: 'Article 6', body: 'article 66666666', status: 'public') }
      let!(:article_7) { Article.create!(title: 'Article 7', body: 'article 77777777', status: 'public') }
      let!(:article_8) { Article.create!(title: 'Article 8', body: 'article 88888888', status: 'public') }

      it do
        expect(Article.public_count).to eq 7
      end
    end

    describe "#public_count 8" do
      let!(:article_1) { Article.create!(title: 'Article 1', body: 'article 1111111', status: 'public') }
      let!(:article_2) { Article.create!(title: 'Article 2', body: 'article 22222222', status: 'private') }
      let!(:article_3) { Article.create!(title: 'Article 3', body: 'article 33333333', status: 'public') }
      let!(:article_4) { Article.create!(title: 'Article 4', body: 'article 44444444', status: 'public') }
      let!(:article_5) { Article.create!(title: 'Article 5', body: 'article 55555555', status: 'public') }
      let!(:article_6) { Article.create!(title: 'Article 6', body: 'article 66666666', status: 'public') }
      let!(:article_7) { Article.create!(title: 'Article 7', body: 'article 77777777', status: 'public') }
      let!(:article_8) { Article.create!(title: 'Article 8', body: 'article 88888888', status: 'public') }
      let!(:article_9) { Article.create!(title: 'Article 9', body: 'article 99999999', status: 'public') }

      it do
        expect(Article.public_count).to eq 8
      end
    end

    describe "#public_count 9" do
      let!(:article_1) { Article.create!(title: 'Article 1', body: 'article 1111111', status: 'public') }
      let!(:article_2) { Article.create!(title: 'Article 2', body: 'article 22222222', status: 'private') }
      let!(:article_3) { Article.create!(title: 'Article 3', body: 'article 33333333', status: 'public') }
      let!(:article_4) { Article.create!(title: 'Article 4', body: 'article 44444444', status: 'public') }
      let!(:article_5) { Article.create!(title: 'Article 5', body: 'article 55555555', status: 'public') }
      let!(:article_6) { Article.create!(title: 'Article 6', body: 'article 66666666', status: 'public') }
      let!(:article_7) { Article.create!(title: 'Article 7', body: 'article 77777777', status: 'public') }
      let!(:article_8) { Article.create!(title: 'Article 8', body: 'article 88888888', status: 'public') }
      let!(:article_9) { Article.create!(title: 'Article 9', body: 'article 99999999', status: 'public') }
      let!(:article_10) { Article.create!(title: 'Article 10', body: 'article 10', status: 'public') }

      it do
        expect(Article.public_count).to eq 9
      end
    end

    describe "#public_count 10" do
      let!(:article_1) { Article.create!(title: 'Article 1', body: 'article 1111111', status: 'public') }
      let!(:article_2) { Article.create!(title: 'Article 2', body: 'article 22222222', status: 'private') }
      let!(:article_3) { Article.create!(title: 'Article 3', body: 'article 33333333', status: 'public') }
      let!(:article_4) { Article.create!(title: 'Article 4', body: 'article 44444444', status: 'public') }
      let!(:article_5) { Article.create!(title: 'Article 5', body: 'article 55555555', status: 'public') }
      let!(:article_6) { Article.create!(title: 'Article 6', body: 'article 66666666', status: 'public') }
      let!(:article_7) { Article.create!(title: 'Article 7', body: 'article 77777777', status: 'public') }
      let!(:article_8) { Article.create!(title: 'Article 8', body: 'article 88888888', status: 'public') }
      let!(:article_9) { Article.create!(title: 'Article 9', body: 'article 99999999', status: 'public') }
      let!(:article_10) { Article.create!(title: 'Article 10', body: 'article 10', status: 'public') }
      let!(:article_11) { Article.create!(title: 'Article 11', body: 'article 11', status: 'public') }

      it do
        expect(Article.public_count).to eq 10
      end
    end

    describe "#public_count 11" do
      let!(:article_1) { Article.create!(title: 'Article 1', body: 'article 1111111', status: 'public') }
      let!(:article_2) { Article.create!(title: 'Article 2', body: 'article 22222222', status: 'private') }
      let!(:article_3) { Article.create!(title: 'Article 3', body: 'article 33333333', status: 'public') }
      let!(:article_4) { Article.create!(title: 'Article 4', body: 'article 44444444', status: 'public') }
      let!(:article_5) { Article.create!(title: 'Article 5', body: 'article 55555555', status: 'public') }
      let!(:article_6) { Article.create!(title: 'Article 6', body: 'article 66666666', status: 'public') }
      let!(:article_7) { Article.create!(title: 'Article 7', body: 'article 77777777', status: 'public') }
      let!(:article_8) { Article.create!(title: 'Article 8', body: 'article 88888888', status: 'public') }
      let!(:article_9) { Article.create!(title: 'Article 9', body: 'article 99999999', status: 'public') }
      let!(:article_10) { Article.create!(title: 'Article 10', body: 'article 10', status: 'public') }
      let!(:article_11) { Article.create!(title: 'Article 11', body: 'article 11', status: 'public') }
      let!(:article_12) { Article.create!(title: 'Article 12', body: 'article 12', status: 'public') }

      it do
        expect(Article.public_count).to eq 11
      end
    end

    describe "#public_count 12" do
      let!(:article_1) { Article.create!(title: 'Article 1', body: 'article 1111111', status: 'public') }
      let!(:article_2) { Article.create!(title: 'Article 2', body: 'article 22222222', status: 'private') }
      let!(:article_3) { Article.create!(title: 'Article 3', body: 'article 33333333', status: 'public') }
      let!(:article_4) { Article.create!(title: 'Article 4', body: 'article 44444444', status: 'public') }
      let!(:article_5) { Article.create!(title: 'Article 5', body: 'article 55555555', status: 'public') }
      let!(:article_6) { Article.create!(title: 'Article 6', body: 'article 66666666', status: 'public') }
      let!(:article_7) { Article.create!(title: 'Article 7', body: 'article 77777777', status: 'public') }
      let!(:article_8) { Article.create!(title: 'Article 8', body: 'article 88888888', status: 'public') }
      let!(:article_9) { Article.create!(title: 'Article 9', body: 'article 99999999', status: 'public') }
      let!(:article_10) { Article.create!(title: 'Article 10', body: 'article 10', status: 'public') }
      let!(:article_11) { Article.create!(title: 'Article 11', body: 'article 11', status: 'public') }
      let!(:article_12) { Article.create!(title: 'Article 12', body: 'article 12', status: 'public') }
      let!(:article_13) { Article.create!(title: 'Article 13', body: 'article 13', status: 'public') }

      it do
        expect(Article.public_count).to eq 12
      end
    end
  end
end