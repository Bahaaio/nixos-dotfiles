{ ... }:

{
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;

    # extraLadspaPackages = [ pkgs.deepfilternet ];

    extraConfig.pipewire = {
      "10-disable-x11-bell" = {
        "context.properties" = {
          "module.x11.bell" = false;
        };
      };

      # my poor CPU can't handle this
      # https://github.com/Rikorose/DeepFilterNet/blob/main/ladspa/filter-chain-configs/deepfilter-mono-source.conf
      # "99-deepfilter-mic" = {
      #   "context.modules" = [
      #     {
      #       name = "libpipewire-module-filter-chain";
      #       flags = [ "nofail" ];
      #       args = {
      #         "node.description" = "DeepFilter Noise Canceling source";
      #         "media.name" = "DeepFilter Noise Canceling source";
      #
      #         "filter.graph" = {
      #           nodes = [
      #             {
      #               type = "ladspa";
      #               name = "DeepFilter Mono";
      #               plugin = "libdeep_filter_ladspa";
      #               label = "deep_filter_mono";
      #               control = {
      #                 "Attenuation Limit (dB)" = 100;
      #               };
      #             }
      #           ];
      #         };
      #
      #         "audio.rate" = 48000;
      #         "audio.position" = [ "MONO" ];
      #
      #         "capture.props"."node.passive" = true;
      #         "playback.props"."media.class" = "Audio/Source";
      #       };
      #     }
      #   ];
      # };
    };
  };
}
