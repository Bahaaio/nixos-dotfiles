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
    dotnet-sdk_10
    dotnet-ef
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
