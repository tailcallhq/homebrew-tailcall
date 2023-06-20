class Cliapp < Formula
    desc "Tailcall CLI App"
    homepage "https://github.com/tailcallhq/tailcall/"
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.1.0/tailcall-v0.1.0.zip"
    sha256 "9aa0802c0c3aa2b7fe8c8245cefb0d4daee214183e0fd5a71ec1003c9c9e09c8"
    version "0.1.0"
  
    depends_on "openjdk@11"
  
    def install
      libexec.install Dir["*"]
      (bin/"tc").write <<~EOS
      #!/bin/sh
      exec java -jar #{lib}/cli-assembly-0.1.0-SNAPSHOT.jar "$@"
    EOS
      
    end
  
    test do
      system "#{bin}/tc"
    end
  end
  
