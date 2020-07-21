require "spec_helper"

describe Article do
  describe "#subject" do
    it "returns the article title" do
      article = create(:article, title: 'qqq www')
      eaxept(article.subject).to eq 'qqq www'
    end
  end
end