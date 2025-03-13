components {
  id: "NumberPuzzleElement"
  component: "/Placeables/NumberPuzzle/Element/S_NumberPuzzleElement.script"
}
components {
  id: "WorldElement"
  component: "/Placeables/Common/S_WorldElement.script"
}
components {
  id: "KanjiTestInitiator"
  component: "/Placeables/Common/S_KanjiTestInitiator.script"
}
embedded_components {
  id: "trigger"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_TRIGGER\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"triggerZ\"\n"
  "mask: \"player\"\n"
  "mask: \"playerTrigger\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      y: 5.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 14.353984\n"
  "  data: 12.0\n"
  "  data: 7.6\n"
  "}\n"
  ""
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"LiquidPuzzleElement\"\n"
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
  id: "kanji"
  type: "sprite"
  data: "default_animation: \"1\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "size {\n"
  "  x: 36.0\n"
  "  y: 48.0\n"
  "}\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Art/Kanji/Icons/ATL_Kanji_Icons.atlas\"\n"
  "}\n"
  ""
  position {
    y: -19.0
    z: 0.52
  }
}
embedded_components {
  id: "collision"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_STATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"nonTriggerWall\"\n"
  "mask: \"player\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      y: 16.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 16.0\n"
  "  data: 5.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
