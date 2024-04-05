class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.4/tailcall-x86_64-apple-darwin"
    sha256 "72d7180e4a0d29417f5fb7d195f2feb980f0e6ab9fc7a57cba11eda380c2ae85"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.4/tailcall-aarch64-apple-darwin"
    sha256 "2f9be27983eed9d683e4170fea8e5f0d4b18a0c19e66357aa42de122e36395d2"
  end

  version "v0.74.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
