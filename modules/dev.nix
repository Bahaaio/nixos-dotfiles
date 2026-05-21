{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gcc
    clang
    cmake
    gnumake
    jdk
    jdk25
    maven
    gradle
    go
    nodejs
    uv
    python3
    typst
  ];

  environment.sessionVariables = {
    JAVA_HOME = "${pkgs.jdk}";
  };
}
