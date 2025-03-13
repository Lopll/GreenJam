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
  ""
}
embedded_components {
  id: "brushSound"
  type: "sound"
  data: "sound: \"/Sounds/HUD/Brush.ogg\"\n"
  "looping: 1\n"
  ""
}
