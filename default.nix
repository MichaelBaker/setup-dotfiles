{ url          ? "https://github.com/MichaelBaker/Dotfiles.git"
, sha          ? "8d86a8a929b07f948fe700ae391c1b2078e091e2"
, stdenv       ? (import <nixpkgs> {}).stdenv
, git          ? (import <nixpkgs> {}).git
}:

# This has two implicit dependencies:
# /bin/mkdir
# /bin/ln
stdenv.mkDerivation {
  inherit git url sha;
  name    = "dotfiles-michael-baker";
  builder = ./setup;
}
