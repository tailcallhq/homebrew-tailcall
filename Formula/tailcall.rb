class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.20/tailcall-x86_64-apple-darwin"
    sha256 "a73efdde2b95d3515b9e440fb1ee541f373405396146c809a3159f5a37f6c1b6"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.20/tailcall-aarch64-apple-darwin"
    sha256 "4f123c2717b82ad227fa04f79013743a1a53bf51fe5b6923c050ef0817b6e896"
  end

  version "v0.82.20"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
