class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.69.5/tailcall-x86_64-apple-darwin"
    sha256 "01ece8b0c448f3dbe75509ca7607d68844d9608ec78a2eb59a86e172d0efcc14"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.69.5/tailcall-aarch64-apple-darwin"
    sha256 "402b46c170c324ed9c787fdcad8ef7b8d711498d9d0b5ad3ae534bb078377936"
  end

  version "v0.69.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
