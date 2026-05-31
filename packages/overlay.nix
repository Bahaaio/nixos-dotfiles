final: prev: {
  gpu-screen-recorder = prev.callPackage ./gpu-screen-recorder/gsr.nix { };
  gpu-screen-recorder-ui = prev.callPackage ./gpu-screen-recorder/ui.nix { };
  gpu-screen-recorder-notification = prev.callPackage ./gpu-screen-recorder/notification.nix { };
}
