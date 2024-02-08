class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.35.4/tailcall-x86_64-apple-darwin"
    sha256 "b40d93f1e3687ab404dde62ae42c2f73e053a811d153762fa02d2d724cff6ad2"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.35.4/tailcall-aarch64-apple-darwin"
    sha256 "ae19e94d19defeb67c44e0d706fd8488e5ff0709060901f11dc604336ba53049"
  end

  version "v0.35.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
