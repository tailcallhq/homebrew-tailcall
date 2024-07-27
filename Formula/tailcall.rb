class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.98.10/tailcall-x86_64-apple-darwin"
    sha256 "f98ad0947c818c8d142c5ba2b2ff8cc21abc308ff55eaa88a27e9e9afc89853f"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.98.10/tailcall-aarch64-apple-darwin"
    sha256 "fc19b3f6d83fb651a94ab0f490b7f44728c7329453ecb3993f35aa6816b96a42"
  end

  version "v0.98.10"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
