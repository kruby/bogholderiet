// TopUp.host = "/javascripts/top_up_min.js";
TopUp.images_path = "/images/top_up/";
// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

  TopUp.addPresets({
    "#images a": {
      group: "images",
      layout: "dashboard",
      modal: 1,
      resizable: 0,
      readAltText: 1,
      shaded: 0
    },
    ".shaded": {
      shaded: 1
    }
  });


