class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.135.0/tailcall-x86_64-apple-darwin"
    sha256 "cd132b6730686e54071bbdd2c6e9302a0ad48c3379a55f2e4b462d817a02ced7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.135.0/tailcall-aarch64-apple-darwin"
    sha256 "bc4d07206229c65d6dd362ab14eba248cb8629432c67238fb20d60c265bd5ba4"
  end

  version "v0.135.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
