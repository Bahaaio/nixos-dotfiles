{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gcc
    clang
    cmake
    gnumake
    jdk
    maven
    go
    nodejs
    uv
    python3
    typst
    cargo
  ];

  environment.sessionVariables = {
    JAVA_HOME = "${pkgs.jdk}";
  };
}
