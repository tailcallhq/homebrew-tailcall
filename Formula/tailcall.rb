class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.87.0/tailcall-x86_64-apple-darwin"
    sha256 "abb3a627f65d71e821e3dd74bbfbd861f51e219fae9a4ef426a29f93ff2e9dec"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.87.0/tailcall-aarch64-apple-darwin"
    sha256 "c44a6401095c53c9ec1e1c80332f0923d5468613779c484ec339335e9ea7aa01"
  end

  version "v0.87.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
