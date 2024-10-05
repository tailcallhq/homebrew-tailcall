class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.119.0/tailcall-x86_64-apple-darwin"
    sha256 "face1ecc6c38b2a81dcec9521672a985f0679bde08a0c3c2228aa99e5bb663fe"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.119.0/tailcall-aarch64-apple-darwin"
    sha256 "9587defb19bcbcb83c850bb4cb17d4b61ac17bd7ed7ef75ea4eaa18e8964adae"
  end

  version "v0.119.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
