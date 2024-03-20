class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.64.3/tailcall-x86_64-apple-darwin"
    sha256 "f16532b462aa823de274f398aadfb81b8af654b8050540b98c7153a40c42d2fb"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.64.3/tailcall-aarch64-apple-darwin"
    sha256 "09ad644b5e0be99838a91848e55f1c86dbd9f3e3ae4febd63613352077f8d92e"
  end

  version "v0.64.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
