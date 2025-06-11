# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class MiniTest < Formula
  desc "ptree is a cli tool to print a tree of any charater with given length(default: 7)"
  homepage "https://github.com/anubhavitis/homebrew-mini-test"
  url "https://github.com/anubhavitis/homebrew-mini-test/releases/download/1.0/homebrew-mini-test"
  sha256 "e115b1ca16fdf3f630abc0a6e1f8a313a9be6b249d8391e7c39e7cc8fdccc6c3"
  license ""


  def install
    ohai "Installing to #{bin}"
    bin.install "homebrew-mini-test" => "ptree"
  end

  def caveats
    <<~EOS
      Ptree installed
      ptree is a cli tool to print a tree of any charater with given length(default: 7)
      You can also use it to print a tree of any charater with given length in reverse order

      Usage:
        ptree -l 7 -c '*'  # print a tree of 7 length with '*'
        ptree -l 7 -c '*' -r  # reverse the tree

      To get more help, run:
        ptree --help

      ** IMPORTANT **
      To use ptree conveniently, you can create an alias by running:
        echo 'alias ptree="$(brew --prefix)/bin/ptree"' >> ~/.bash_profile
        source ~/.bash_profile
        
      or for Zsh users:
        echo 'alias ptree="$(brew --prefix)/bin/ptree"' >> ~/.zshrc
        source ~/.zshrc
    EOS
  end

  test do
  system bin/"ptree", "--help" # Basic command check
  end 
  
end
