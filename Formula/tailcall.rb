class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.2/tailcall-x86_64-apple-darwin"
    sha256 "bc61a9e6e37a398fd4c76ebbf52ca208a7e671976c96b90c9d775f8c15a81b99"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.2/tailcall-aarch64-apple-darwin"
    sha256 "7ea9dc6c9538046cfa304060f1e491dc9ad572be8791052e4e6a79a7c7775fac"
  end

  version "v0.111.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
