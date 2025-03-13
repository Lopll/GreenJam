components {
  id: "ProgressBar"
  component: "/Placeables/Common/S_ProgressBar.script"
}
embedded_components {
  id: "progress"
  type: "sprite"
  data: "default_animation: \"Liquid\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "size {\n"
  "  x: 60.0\n"
  "  y: 16.0\n"
  "}\n"
  "size_mode: SIZE_MODE_MANUAL\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Art/Placeables/ATL_Placeable.atlas\"\n"
  "}\n"
  ""
  position {
    x: 29.0
    z: 0.49
  }
}
