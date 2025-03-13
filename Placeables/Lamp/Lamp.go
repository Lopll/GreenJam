components {
  id: "S_Lamp"
  component: "/Placeables/Lamp/S_Lamp.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"Lamp\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Art/Placeables/ATL_Placeable.atlas\"\n"
  "}\n"
  ""
  position {
    z: 0.5
  }
}
embedded_components {
  id: "light"
  type: "sprite"
  data: "default_animation: \"LampWhite\"\n"
  "material: \"/Core/Materials/M_Tint.material\"\n"
  "size {\n"
  "  x: 32.0\n"
  "  y: 32.0\n"
  "}\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Art/Placeables/ATL_Placeable.atlas\"\n"
  "}\n"
  ""
  position {
    z: 0.49
  }
}
