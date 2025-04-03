# Hardware configuration
{ config, pkgs, lib, ... }:

{
  # Printing
  services.printing.enable = true;

  # Audio with PipeWire
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa = {
      enable = true;
      support32Bit = true;
    };
    pulse.enable = true;
    # Uncomment to enable JACK support
    # jack.enable = true;
  };
}
