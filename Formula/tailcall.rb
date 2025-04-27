class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.6.8/tailcall-x86_64-apple-darwin"
    sha256 "9cfc36ee745fa29b0f63e1196cb44855c13538bcf331e65aef3c94bbffa4534a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.6.8/tailcall-aarch64-apple-darwin"
    sha256 "7ffdd8bccc9cf21ad572bda0d95fd5b3ec0ec56d66e2c4f6dffdc47ec59246fa"
  end

  version "v1.6.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
