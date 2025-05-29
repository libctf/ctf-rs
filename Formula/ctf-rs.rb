# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CtfRs < Formula
  desc "ctf-rs is ctf platform inspired by CTFd, but w/o any price gated features, and built from the ground up as cloud native."
  homepage "https://github.com/libctf/ctf-rs"
  url "https://github.com/libctf/ctf-rs/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "4bf325354933014e5406989d800500b86965c230a60b6ffaf54280a46cdeaae9"
  license "AGPL-3.0"

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
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args    # here we are installing the shell script and giving it an executable name of "tiny-sh-example"
    bin.install "src/run.sh" => "tiny-sh-example"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ctf-rs`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
    # this is a simple test that checks if the script errors out
    system "#{bin}/tiny-sh-example", "mvogelgesang"
  end
end
