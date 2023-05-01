{ config, ...}:

{
  programs.newsboat = {
    enable = true;
    urls = [
      {
        title = "Gitea - Evelyne";
        tags = [ "git" ];
        url = "https://git.spyhoodle.me/evelyne.rss";
      }
      {
        title = "Gitea - Maddie";
        tags = [ "git" ];
        url = "https://git.spyhoodle.me/maddie.rss";
      }
    ];
  };
}
