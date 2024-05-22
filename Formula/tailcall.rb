class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.22/tailcall-x86_64-apple-darwin"
    sha256 "6426c27c72eae7b993eeac1c07a06611c455d7fa3c40cebc05bd5de3bdc0ae80"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.22/tailcall-aarch64-apple-darwin"
    sha256 "36edc351179ae1ebd81f403426880d37762654eef95227718050d6628e1393a9"
  end

  version "v0.82.22"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
