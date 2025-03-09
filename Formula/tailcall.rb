class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.11/tailcall-x86_64-apple-darwin"
    sha256 "592bf38e4183999b960ff833361fd85fc3db02716c0e930d307e57dde98bcf41"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.11/tailcall-aarch64-apple-darwin"
    sha256 "ffe8d31d91aa5a0f028800aa1ebf0e8f0474049ac789bf616072b48cd06dca03"
  end

  version "v1.5.11"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
