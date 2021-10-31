# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Voorhees < Formula
  desc "Melvin's projects."
  homepage "https://melvin.la"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Nivl/voorhees/releases/download/v1.0.3/voorhees_1.0.3_Darwin_x86_64.tar.gz"
      sha256 "0cbb19fee490f0609fb0a64b9670fcc983ad9d876738ccb9fb567d4b29365ee0"

      def install
        bin.install "voorhees"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Nivl/voorhees/releases/download/v1.0.3/voorhees_1.0.3_Darwin_arm64.tar.gz"
      sha256 "ed24042384d2cfa709654972c1ce6419f93f8928b523f5458029a7219836510c"

      def install
        bin.install "voorhees"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Nivl/voorhees/releases/download/v1.0.3/voorhees_1.0.3_Linux_x86_64.tar.gz"
      sha256 "a0cfeb34ead571439409f390e44e3aae38bc65ef1dfd8f830119164e8a2f0e8d"

      def install
        bin.install "voorhees"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Nivl/voorhees/releases/download/v1.0.3/voorhees_1.0.3_Linux_arm64.tar.gz"
      sha256 "6d4450aa44286c46f79a02fe4e4bcb348bc1236e2e4e4859748a77a58a04af11"

      def install
        bin.install "voorhees"
      end
    end
  end

  test do
    system "#{bin}/voorhees --version"
  end
end
