class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.40.3/tailcall-x86_64-apple-darwin"
    sha256 "c375b4e5db548c021a749fc8206e5316cf013b6cc8e481ac7e63710d6e621550"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.40.3/tailcall-aarch64-apple-darwin"
    sha256 "d14f16f95ef028bb6da8930681f8b0eb0d373839bb487fdfca319ac2b2b2303a"
  end

  version "v0.40.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
