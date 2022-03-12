{
  description = ''Redux Implementation in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."redux_nim-master".url = "path:./master";
  inputs."redux_nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redux_nim-v0_1_0".url = "path:./v0_1_0";
  inputs."redux_nim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redux_nim-v0_1_1".url = "path:./v0_1_1";
  inputs."redux_nim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redux_nim-v0_2_0".url = "path:./v0_2_0";
  inputs."redux_nim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redux_nim-v1_0_0".url = "path:./v1_0_0";
  inputs."redux_nim-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redux_nim-v1_0_1".url = "path:./v1_0_1";
  inputs."redux_nim-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redux_nim-v1_0_2".url = "path:./v1_0_2";
  inputs."redux_nim-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redux_nim-v1_0_3".url = "path:./v1_0_3";
  inputs."redux_nim-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}