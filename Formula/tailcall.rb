class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.130.1/tailcall-x86_64-apple-darwin"
    sha256 "37fa5fc1a014de899af4e9eda09cc95f8386c4146aec6eb55d0df745aa189211"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.130.1/tailcall-aarch64-apple-darwin"
    sha256 "e3baf28ba9655b875fbaa2e61cfaa47b7211f2feede92a6eae45776ed3c83059"
  end

  version "v0.130.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
