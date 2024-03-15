class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.55.1/tailcall-x86_64-apple-darwin"
    sha256 "d0c394dd853d371c86df1d38c1834e1fd9dbf4820317216da2aa47f4a419efda"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.55.1/tailcall-aarch64-apple-darwin"
    sha256 "5159156d69066c84d3e9dfd6fa5f250600c5e7563236fdc29c39a5be0d4e4bc3"
  end

  version "v0.55.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
