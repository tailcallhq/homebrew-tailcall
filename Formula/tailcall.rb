class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.42.1/tailcall-x86_64-apple-darwin"
    sha256 "71b93c6359027fc2bed8e95a6d2349bc139be3796543cfac5cdcd87d889aee93"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.42.1/tailcall-aarch64-apple-darwin"
    sha256 "09d66bdafe7b797a438f8f7551062953f50edb6fe0809f6251c8a42fa04be30d"
  end

  version "v0.42.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
