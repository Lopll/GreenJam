components {
  id: "script"
  component: "/Core/SceneManager/S_SceneManager.script"
}
embedded_components {
  id: "World1"
  type: "collectionproxy"
  data: "collection: \"/Maps/World1.collection\"\n"
  ""
}
embedded_components {
  id: "sound"
  type: "sound"
  data: "sound: \"/Sounds/HUD/Button/ButtonHover.ogg\"\n"
  "group: \"jamMaster\"\n"
  "gain: 0.6\n"
  ""
}
embedded_components {
  id: "brushSound"
  type: "sound"
  data: "sound: \"/Sounds/street.wav\"\n"
  "looping: 1\n"
  "group: \"music\"\n"
  "gain: 0.2\n"
  ""
}
