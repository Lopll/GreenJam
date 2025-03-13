components {
  id: "S_Coin"
  component: "/Placeables/Pickable/Coin/S_Coin.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"KanjiPointIcon\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Art/GUI/ATL_GUI.atlas\"\n"
  "}\n"
  ""
}
embedded_components {
  id: "trigger"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_TRIGGER\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"trigger\"\n"
  "mask: \"player\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 12.0\n"
  "  data: 12.0\n"
  "  data: 0.5\n"
  "}\n"
  ""
}
