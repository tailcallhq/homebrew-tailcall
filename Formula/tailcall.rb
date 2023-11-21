class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.16.1/tailcall-x86_64-apple-darwin"
    sha256 "93b250575cff43adfcb0da27ef619f343c1fed96d36cbd0c7f907143b72acd1f"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.16.1/tailcall-aarch64-apple-darwin"
    sha256 "462f448ab6fe4df4e7c018973cb72b20c15e7b04cc9200077047f9d2aebe83fe"
  end

  version "v0.16.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
