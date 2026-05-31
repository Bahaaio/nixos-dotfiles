let
  avatar = builtins.fetchurl {
    url = "https://avatars.githubusercontent.com/u/107966806?v=4";
    sha256 = "sha256:15ffn64f6xa4092nxql7a34hdr8nj3hymggbb893cv4dxr3jr7xy";
  };
in
{
  environment.etc."avatar".source = avatar;
}
