{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell
{
  nativeBuildInputs = with pkgs; [
    lua
  ];

  shellHook = ''
    echo "welcome to 
    my dev-environment!"
  '';
}


