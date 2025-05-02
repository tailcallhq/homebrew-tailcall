class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.6.10/tailcall-x86_64-apple-darwin"
    sha256 "50ef8441e4ed6c76a923c249636799b8a2aa2bde62b5f50b2f14a3dec0c77eda"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.6.10/tailcall-aarch64-apple-darwin"
    sha256 "ec80a93322052b1d6ee171403b4e5a45fa011cf7836ca942dd95d229e00455c5"
  end

  version "v1.6.10"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
