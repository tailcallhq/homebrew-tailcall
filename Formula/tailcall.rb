class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.4/tailcall-x86_64-apple-darwin"
    sha256 "6f84abc11cc609bde95d3e1d6c331ff0e09407ce88dd4bb539cda4c3bb366937"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.4/tailcall-aarch64-apple-darwin"
    sha256 "8f065ecef5cd7faede66a46e8ed63edd66cb351e9f050d562aec51dae4359326"
  end

  version "v0.111.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
