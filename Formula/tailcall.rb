class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.15/tailcall-x86_64-apple-darwin"
    sha256 "74cf7dfd8204ba10a41d43d1950ffb22bd9fe7f91cc555410b3643de5f48052b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.15/tailcall-aarch64-apple-darwin"
    sha256 "719dd94df64d1325d304c5bb865f916b35b0922381891864be8f48d8cab51676"
  end

  version "v0.104.15"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
