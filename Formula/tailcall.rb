class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.78.9/tailcall-x86_64-apple-darwin"
    sha256 "d4335ba111d085286136c9451cc08c3c69fb808a204fd3bd1bff35c8b7db67ed"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.78.9/tailcall-aarch64-apple-darwin"
    sha256 "f97c70fd43f91f3a695420d5c59899685deadaa641c36300a9a7aae4a53d3fda"
  end

  version "v0.78.9"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
