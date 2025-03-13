components {
  id: "S_Lock"
  component: "/Placeables/Lock/S_Lock.script"
}
components {
  id: "WorldElement"
  component: "/Placeables/Common/S_WorldElement.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"Lock\"\n"
  "material: \"/Core/Materials/M_OutlineSprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Art/Placeables/ATL_Placeable.atlas\"\n"
  "}\n"
  ""
  position {
    z: 0.51
  }
}
embedded_components {
  id: "collisionobject"
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
  "  data: 16.0\n"
  "  data: 30.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
