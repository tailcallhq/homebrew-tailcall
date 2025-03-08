class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.4/tailcall-x86_64-apple-darwin"
    sha256 "e905450e15dfd739c3ce0086e68a16a23fefbb59596a821f47add416a9c41dbc"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.4/tailcall-aarch64-apple-darwin"
    sha256 "1b6667387c1417ac724e18c414bdfd4968eec93416ad383253016553ff742e70"
  end

  version "v1.5.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
