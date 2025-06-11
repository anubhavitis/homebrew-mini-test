# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class MiniTest < Formula
  desc "ptree is a cli tool to print a tree of any charater with given length(default: 7)"
  homepage "https://github.com/anubhavitis/homebrew-mini-test"
  url "https://github.com/anubhavitis/homebrew-mini-test/archive/refs/tags/1.0.tar.gz"
  sha256 "7b03389c2ebf156a90facce96f98c85e2ddfdec6334e56320f3638dc8a6c7075"
  license ""


  def install

    ohai "Installing to #{bin}"
    bin.install "target/release/homebrew-mini-test" => "ptree"
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
