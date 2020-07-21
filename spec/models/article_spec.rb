require "spec_helper"

=begin
describe Article do
  describe "#subject" do
    it "returns the article title" do
      article = create(:article, title: 'qqq www')
      expect(article.subject).to eq 'qqq www'
    end
  end
end
=end