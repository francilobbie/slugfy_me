RSpec.describe SlugfyMe do
  it "transforme une chaîne simple en slug" do
    expect(SlugfyMe.slugify("Salut les amis")).to eq("salut-les-amis")
  end

  it "gère les caractères accentués" do
    expect(SlugfyMe.slugify("Crème brûlée au Café")).to eq("creme-brulee-au-cafe")
  end

  it "supprime les caractères spéciaux" do
    expect(SlugfyMe.slugify("Ruby, c'est top!")).to eq("ruby-cest-top")
  end

  it "remplace les espaces par un séparateur custom" do
    expect(SlugfyMe.slugify("Ruby est top", separator: "_")).to eq("ruby_est_top")
  end
end
