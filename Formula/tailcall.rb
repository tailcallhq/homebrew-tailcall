class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.24.2/tailcall-x86_64-apple-darwin"
    sha256 "2eaa8494a7fe21ad22d7da0e86b93d752572295adc2f6bc0512b41849cc18564"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.24.2/tailcall-aarch64-apple-darwin"
    sha256 "277da72a7919df348eb8b563cf42687b5b06614484f541a87dca33fb984ea96e"
  end

  version "v0.24.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
