{ config, username, ... }:

{
  targets.darwin.defaults."com.googlecode.iterm2" = {
    "PreventEscapeSequenceFromClearingHistory" = 0;
    "NoSyncHaveExplainedHowToAddTouchbarControls" = 1;
    "NoSyncTipsDisabled" = 1;
    "SoundForEsc" = 0;
    "VisualIndicatorForEsc" = 0;
    "Custom Color Presets" = {
      "One Dark" = {
        "Ansi 0 Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.168627455830574";
          "Color Space" = "sRGB";
          "Green Component" = "0.1450980454683304";
          "Red Component" = "0.1294117718935013";
        };
        "Ansi 1 Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.4588235318660736";
          "Color Space" = "sRGB";
          "Green Component" = "0.4235294163227081";
          "Red Component" = "0.8784313797950745";
        };
        "Ansi 10 Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.4745098054409027";
          "Color Space" = "sRGB";
          "Green Component" = "0.7647058963775635";
          "Red Component" = "0.5960784554481506";
        };
        "Ansi 11 Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.4823529422283173";
          "Color Space" = "sRGB";
          "Green Component" = "0.7529411911964417";
          "Red Component" = "0.8980392217636108";
        };
        "Ansi 12 Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.9372549057006836";
          "Color Space" = "sRGB";
          "Green Component" = "0.686274528503418";
          "Red Component" = "0.3803921639919281";
        };
        "Ansi 13 Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.8666666746139526";
          "Color Space" = "sRGB";
          "Green Component" = "0.4705882370471954";
          "Red Component" = "0.7764706015586853";
        };
        "Ansi 14 Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.7607843279838562";
          "Color Space" = "sRGB";
          "Green Component" = "0.7137255072593689";
          "Red Component" = "0.3372549116611481";
        };
        "Ansi 15 Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.7490196228027344";
          "Color Space" = "sRGB";
          "Green Component" = "0.6980392336845398";
          "Red Component" = "0.6705882549285889";
        };
        "Ansi 2 Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.4745098054409027";
          "Color Space" = "sRGB";
          "Green Component" = "0.7647058963775635";
          "Red Component" = "0.5960784554481506";
        };
        "Ansi 3 Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.4823529422283173";
          "Color Space" = "sRGB";
          "Green Component" = "0.7529411911964417";
          "Red Component" = "0.8980392217636108";
        };
        "Ansi 4 Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.9372549057006836";
          "Color Space" = "sRGB";
          "Green Component" = "0.686274528503418";
          "Red Component" = "0.3803921639919281";
        };
        "Ansi 5 Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.8666666746139526";
          "Color Space" = "sRGB";
          "Green Component" = "0.4705882370471954";
          "Red Component" = "0.7764706015586853";
        };
        "Ansi 6 Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.7607843279838562";
          "Color Space" = "sRGB";
          "Green Component" = "0.7137255072593689";
          "Red Component" = "0.3372549116611481";
        };
        "Ansi 7 Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.7490196228027344";
          "Color Space" = "sRGB";
          "Green Component" = "0.6980392336845398";
          "Red Component" = "0.6705882549285889";
        };
        "Ansi 8 Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.4627451002597809";
          "Color Space" = "sRGB";
          "Green Component" = "0.4627451002597809";
          "Red Component" = "0.4627451002597809";
        };
        "Ansi 9 Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.4588235318660736";
          "Color Space" = "sRGB";
          "Green Component" = "0.4235294163227081";
          "Red Component" = "0.8784313797950745";
        };
        "Background Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.168627455830574";
          "Color Space" = "sRGB";
          "Green Component" = "0.1450980454683304";
          "Red Component" = "0.1294117718935013";
        };
        "Badge Color" = {
          "Alpha Component" = "0.5";
          "Blue Component" = "0.4588235318660736";
          "Color Space" = "sRGB";
          "Green Component" = "0.4235294163227081";
          "Red Component" = "0.8784313797950745";
        };
        "Bold Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.7490196228027344";
          "Color Space" = "sRGB";
          "Green Component" = "0.6980392336845398";
          "Red Component" = "0.6705882549285889";
        };
        "Cursor Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.7490196228027344";
          "Color Space" = "sRGB";
          "Green Component" = "0.6980392336845398";
          "Red Component" = "0.6705882549285889";
        };
        "Cursor Guide Color" = {
          "Alpha Component" = "0.1764705882352941";
          "Blue Component" = "0.7490196228027344";
          "Color Space" = "sRGB";
          "Green Component" = "0.6980392336845398";
          "Red Component" = "0.6705882549285889";
        };
        "Cursor Text Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.7490196228027344";
          "Color Space" = "sRGB";
          "Green Component" = "0.6980392336845398";
          "Red Component" = "0.6705882549285889";
        };
        "Foreground Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.7490196228027344";
          "Color Space" = "sRGB";
          "Green Component" = "0.6980392336845398";
          "Red Component" = "0.6705882549285889";
        };
        "Link Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.9372549057006836";
          "Color Space" = "sRGB";
          "Green Component" = "0.686274528503418";
          "Red Component" = "0.3803921639919281";
        };
        "Selected Text Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.7490196228027344";
          "Color Space" = "sRGB";
          "Green Component" = "0.6980392336845398";
          "Red Component" = "0.6705882549285889";
        };
        "Selection Color" = {
          "Alpha Component" = 1;
          "Blue Component" = "0.2666666805744171";
          "Color Space" = "sRGB";
          "Green Component" = "0.2196078449487686";
          "Red Component" = "0.196078434586525";
        };
      };
    };
    "Default Bookmark Guid" = "B038731D-3A7A-44EC-A1C5-8777EB3270A7";
    GlobalTouchBarMap =     {
        "touchbar:0C8EAB5C-C453-4AEA-9DA6-05D596F01730" =         {
            Action = 12;
            Label = "❄️";
            Text = "nix shell\\n";
            Version = 1;
        };
        "touchbar:2DDE7A3B-26B0-4748-AED2-A453238DFF5C" =         {
            Action = 12;
            Label = "🗑️";
            Text = "clear\\n";
            Version = 1;
        };
        "touchbar:5527C3C6-A03F-4CA5-B7C1-A9B52CC89BED" =         {
            Action = 12;
            Label = "⬆️";
            Text = "git push\\n";
            Version = 1;
        };
        "touchbar:A34F65B2-B5FE-4B8F-904C-BFF3D76D352F" =         {
            Action = 12;
            Label = "✍️";
            Text = "git add .; git commit\\n";
            Version = 1;
        };
        "touchbar:B8063C42-FFC8-4735-9A1B-7B5F4D477D90" =         {
            Action = 12;
            Label = "🧐";
            Text = "git status\\n";
            Version = 1;
        };
        "touchbar:E6F32724-CABD-4079-BC0E-95C2BB50BEB7" =         {
            Action = 12;
            Label = "⬇️";
            Text = "git pull\\n";
            Version = 1;
        };
      "NSTouchBarConfig: full screen" = {
        CurrentItems = [
          "touchbar:B8063C42-FFC8-4735-9A1B-7B5F4D477D90/v0"
          "touchbar:A34F65B2-B5FE-4B8F-904C-BFF3D76D352F/v0"
          "touchbar:5527C3C6-A03F-4CA5-B7C1-A9B52CC89BED/v0"
          "touchbar:E6F32724-CABD-4079-BC0E-95C2BB50BEB7/v0"
          "NSTouchBarItemIdentifierFlexibleSpace"
          "touchbar:0C8EAB5C-C453-4AEA-9DA6-05D596F01730/v0"
          "touchbar:2DDE7A3B-26B0-4748-AED2-A453238DFF5C/v0"
          "NSTouchBarItemIdentifierOtherItemsProxy"
        ];
        DefaultItems = [
          "iTermTouchBarIdentifierManPage"
          "iTermTouchBarIdentifierColorPreset"
          "iTermTouchBarIdentifierFunctionKeys"
          "NSTouchBarItemIdentifierFlexibleSpace"
          "NSTouchBarItemIdentifierOtherItemsProxy"
          "iTermTouchBarIdentifierAddMark"
          "iTermTouchBarIdentifierPreviousMark"
          "iTermTouchBarIdentifierNextMark"
        ];
      };
      "NSTouchBarConfig: regular" = {
        CurrentItems = [
          "touchbar:B8063C42-FFC8-4735-9A1B-7B5F4D477D90/v0"
          "touchbar:A34F65B2-B5FE-4B8F-904C-BFF3D76D352F/v0"
          "touchbar:5527C3C6-A03F-4CA5-B7C1-A9B52CC89BED/v0"
          "touchbar:E6F32724-CABD-4079-BC0E-95C2BB50BEB7/v0"
          "NSTouchBarItemIdentifierFlexibleSpace"
          "touchbar:0C8EAB5C-C453-4AEA-9DA6-05D596F01730/v0"
          "touchbar:2DDE7A3B-26B0-4748-AED2-A453238DFF5C/v0"
          "NSTouchBarItemIdentifierOtherItemsProxy"
        ];
        DefaultItems = [
          "iTermTouchBarIdentifierManPage"
          "iTermTouchBarIdentifierColorPreset"
          "iTermTouchBarIdentifierFunctionKeys"
          "NSTouchBarItemIdentifierFlexibleSpace"
          "NSTouchBarItemIdentifierOtherItemsProxy"
          "iTermTouchBarIdentifierAddMark"
          "iTermTouchBarIdentifierPreviousMark"
          "iTermTouchBarIdentifierNextMark"
        ];
      };
      "New Bookmarks" = [{
            "Ansi 0 Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.168627455830574";
                "Color Space" = "sRGB";
                "Green Component" = "0.1450980454683304";
                "Red Component" = "0.1294117718935013";
            };
            "Ansi 1 Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.4588235318660736";
                "Color Space" = "sRGB";
                "Green Component" = "0.4235294163227081";
                "Red Component" = "0.8784313797950745";
            };
            "Ansi 10 Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.4745098054409027";
                "Color Space" = "sRGB";
                "Green Component" = "0.7647058963775635";
                "Red Component" = "0.5960784554481506";
            };
            "Ansi 11 Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.4823529422283173";
                "Color Space" = "sRGB";
                "Green Component" = "0.7529411911964417";
                "Red Component" = "0.8980392217636108";
            };
            "Ansi 12 Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.9372549057006836";
                "Color Space" = "sRGB";
                "Green Component" = "0.686274528503418";
                "Red Component" = "0.3803921639919281";
            };
            "Ansi 13 Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.8666666746139526";
                "Color Space" = "sRGB";
                "Green Component" = "0.4705882370471954";
                "Red Component" = "0.7764706015586853";
            };
            "Ansi 14 Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.7607843279838562";
                "Color Space" = "sRGB";
                "Green Component" = "0.7137255072593689";
                "Red Component" = "0.3372549116611481";
            };
            "Ansi 15 Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.7490196228027344";
                "Color Space" = "sRGB";
                "Green Component" = "0.6980392336845398";
                "Red Component" = "0.6705882549285889";
            };
            "Ansi 2 Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.4745098054409027";
                "Color Space" = "sRGB";
                "Green Component" = "0.7647058963775635";
                "Red Component" = "0.5960784554481506";
            };
            "Ansi 3 Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.4823529422283173";
                "Color Space" = "sRGB";
                "Green Component" = "0.7529411911964417";
                "Red Component" = "0.8980392217636108";
            };
            "Ansi 4 Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.9372549057006836";
                "Color Space" = "sRGB";
                "Green Component" = "0.686274528503418";
                "Red Component" = "0.3803921639919281";
            };
            "Ansi 5 Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.8666666746139526";
                "Color Space" = "sRGB";
                "Green Component" = "0.4705882370471954";
                "Red Component" = "0.7764706015586853";
            };
            "Ansi 6 Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.7607843279838562";
                "Color Space" = "sRGB";
                "Green Component" = "0.7137255072593689";
                "Red Component" = "0.3372549116611481";
            };
            "Ansi 7 Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.7490196228027344";
                "Color Space" = "sRGB";
                "Green Component" = "0.6980392336845398";
                "Red Component" = "0.6705882549285889";
            };
            "Ansi 8 Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.4627451002597809";
                "Color Space" = "sRGB";
                "Green Component" = "0.4627451002597809";
                "Red Component" = "0.4627451002597809";
            };
            "Ansi 9 Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.4588235318660736";
                "Color Space" = "sRGB";
                "Green Component" = "0.4235294163227081";
                "Red Component" = "0.8784313797950745";
            };
            "BM Growl" = 1;
            "Background Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.168627455830574";
                "Color Space" = "sRGB";
                "Green Component" = "0.1450980454683304";
                "Red Component" = "0.1294117718935013";
            };
            "Background Image Location" = "";
            "Badge Color" =             {
                "Alpha Component" = "0.5";
                "Blue Component" = "0.4588235318660736";
                "Color Space" = "sRGB";
                "Green Component" = "0.4235294163227081";
                "Red Component" = "0.8784313797950745";
            };
            "Blinking Cursor" = 0;
            Blur = 1;
            "Blur Radius" = "49.63241356382979";
            "Bold Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.7490196228027344";
                "Color Space" = "sRGB";
                "Green Component" = "0.6980392336845398";
                "Red Component" = "0.6705882549285889";
            };
            "Character Encoding" = 4;
            "Close Sessions On End" = 1;
            Columns = 80;
            Command = "";
            "Cursor Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.7490196228027344";
                "Color Space" = "sRGB";
                "Green Component" = "0.6980392336845398";
                "Red Component" = "0.6705882549285889";
            };
            "Cursor Guide Color" =             {
                "Alpha Component" = "0.1764705882352941";
                "Blue Component" = "0.7490196228027344";
                "Color Space" = "sRGB";
                "Green Component" = "0.6980392336845398";
                "Red Component" = "0.6705882549285889";
            };
            "Cursor Text Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.7490196228027344";
                "Color Space" = "sRGB";
                "Green Component" = "0.6980392336845398";
                "Red Component" = "0.6705882549285889";
            };
            "Cursor Type" = 1;
            "Custom Command" = "No";
            "Custom Directory" = "No";
            "Default Bookmark" = "No";
            "Description" = "Default";
            "Disable Window Resizing" = 1;
            "Flashing Bell" = 0;
            "Foreground Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.7490196228027344";
                "Color Space" = "sRGB";
                "Green Component" = "0.6980392336845398";
                "Red Component" = "0.6705882549285889";
            };
            "Guid" = "B038731D-3A7A-44EC-A1C5-8777EB3270A7";
            "Horizontal Spacing" = 1;
            "Icon" = 0;
            "Idle Code" = 0;
            "Link Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.9372549057006836";
                "Color Space" = "sRGB";
                "Green Component" = "0.686274528503418";
                "Red Component" = "0.3803921639919281";
            };
            "Mouse Reporting" = 1;
            "Name" = "Default";
            "Non Ascii Font" = "Monaco 12";
            "Non-ASCII Anti Aliased" = 1;
            "Normal Font" = "JetBrainsMonoNerdFontComplete-Regular 12";
            "Option Key Sends" = 0;
            "Prompt Before Closing 2" = 0;
            "Right Option Key Sends" = 0;
            "Rows" = 25;
            "Screen" = "-1";
            "Scrollback Lines" = 1000;
            "Selected Text Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.7490196228027344";
                "Color Space" = "sRGB";
                "Green Component" = "0.6980392336845398";
                "Red Component" = "0.6705882549285889";
            };
            "Selection Color" =             {
                "Alpha Component" = 1;
                "Blue Component" = "0.2666666805744171";
                "Color Space" = "sRGB";
                "Green Component" = "0.2196078449487686";
                "Red Component" = "0.196078434586525";
            };
            "Send Code When Idle" = 0;
            "Shortcut" = "";
            "Silence Bell" = 1;
            "Sync Title" = 0;
            "Terminal Type" = "xterm-256color";
            "Transparency" = "0.3756482712765958";
            "Unlimited Scrollback" = 0;
            "Use Bold Font" = 1;
            "Use Bright Bold" = 1;
            "Use Italic Font" = 1;
            "Use Non-ASCII Font" = 0;
            "Vertical Spacing" = 1;
            "Visual Bell" = 1;
            "Window Type" = 0;
            "Working Directory" = "/Users/${username}";
      }];
    };
  };
}
