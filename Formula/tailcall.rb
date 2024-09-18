class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.112.0/tailcall-x86_64-apple-darwin"
    sha256 "670177a1871d32a841a32fdc9581a1eaf8ed3d2606be4560cb46906dbb3f6ac2"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.112.0/tailcall-aarch64-apple-darwin"
    sha256 "cfd9dafe7f89f517512d6609c83ac65106842e2b0a306e8387a1abdac25fc81d"
  end

  version "v0.112.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
