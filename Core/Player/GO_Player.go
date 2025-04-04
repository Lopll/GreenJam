components {
  id: "script"
  component: "/JamContent/Core/S_Player.script"
}
components {
  id: "KinematicCollision"
  component: "/Core/Player/S_Player_KinematicCollision.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"WalkUp\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "playback_rate: 0.0\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/JamContent/Characters/Player/Walk/A_Player.atlas\"\n"
  "}\n"
  ""
  position {
    z: 0.6
  }
}
embedded_components {
  id: "collision"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.0\n"
  "restitution: 0.0\n"
  "group: \"player\"\n"
  "mask: \"wall\"\n"
  "mask: \"nonTriggerWall\"\n"
  "mask: \"tilemapWall\"\n"
  "mask: \"trigger\"\n"
  "mask: \"triggerZ\"\n"
  "mask: \"movingWall\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_SPHERE\n"
  "    position {\n"
  "      y: -1.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 1\n"
  "  }\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      y: -1.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 1\n"
  "    count: 3\n"
  "  }\n"
  "  data: 8.0\n"
  "  data: 8.0\n"
  "  data: 1.5\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "sound"
  type: "sound"
  data: "sound: \"/Sounds/button1.wav\"\n"
  "group: \"player\"\n"
  ""
}
embedded_components {
  id: "shadow"
  type: "sprite"
  data: "default_animation: \"Shadow\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "size {\n"
  "  x: 16.0\n"
  "  y: 8.0\n"
  "}\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Art/Placeables/ATL_Placeable.atlas\"\n"
  "}\n"
  ""
  position {
    y: -8.0
    z: 0.4
  }
  scale {
    x: 0.75
    y: 0.75
  }
}
embedded_components {
  id: "triggerUp"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_TRIGGER\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"playerTrigger\"\n"
  "mask: \"wall\"\n"
  "mask: \"triggerZ\"\n"
  "mask: \"tilemapWall\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      y: -18.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 4.0\n"
  "  data: 10.0\n"
  "  data: 0.5\n"
  "}\n"
  ""
}
embedded_components {
  id: "voice"
  type: "sound"
  data: "sound: \"/Sounds/Death.wav\"\n"
  "group: \"voice\"\n"
  "gain: 0.5\n"
  ""
}
