# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class MiniTest < Formula
  desc "ptree is a cli tool to print a tree of any charater with given length(default: 7)"
  homepage "https://github.com/anubhavitis/homebrew-mini-test"
  url "https://github.com/anubhavitis/homebrew-mini-test/archive/refs/tags/1.0.tar.gz"
  sha256 "7b03389c2ebf156a90facce96f98c85e2ddfdec6334e56320f3638dc8a6c7075"
  license ""

  # depends_on "cmake" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", "--disable-silent-rules", *std_configure_args
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
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
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test mini-test`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
