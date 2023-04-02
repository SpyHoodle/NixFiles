{ config, ... }:

{
  home = {
    sessionVariables = {
      # Force use of XDG Dir Spec
      CUDA_CACHE_PATH = "${config.xdg.cacheHome}/nv";
      LESSHISTFILE = "${config.xdg.configHome}/less/history";
      LESSKEY = "${config.xdg.configHome}/less/keys";
      WINEPREFIX = "${config.xdg.dataHome}/wine";
      _JAVA_OPTIONS = "-Djava.util.prefs.userRoot=${config.xdg.configHome}/java";
    };

    shellAliases = {
      # Force use of XDG Dir Spec
      wget = "wget --hsts-file='${config.xdg.dataHome}/wget-hsts'";
      rxrdb = "xrdb -load '${config.xdg.configHome}/.config/X11/xresources'";
      nvidia-settings = "nvidia-settings --config='${config.xdg.configHome}'/nvidia/settings";
    };
  };
}
