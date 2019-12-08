import crafttweaker.item.IItemStack;

val crystalIngot = <avaritia:resource:1>;
val uberCrafting = <avaritia:double_compressed_crafting_table>;
val wokeCore = <draconicevolution:awakened_core>;

recipes.remove(<avaritia:extreme_crafting_table>);
recipes.addShaped(<avaritia:extreme_crafting_table>,
[[crystalIngot,wokeCore,crystalIngot],
 [crystalIngot,uberCrafting,crystalIngot],
 [crystalIngot,wokeCore,crystalIngot]]);

function s(x as int){
	return <singularities:singularity>.definition.makeStack(x) as IItemStack;
}

mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:5>);
mods.avaritia.ExtremeCrafting.addShaped("antimatter_singularity",<avaritia:resource:5>, 

[[<singularities:singularity:1>,<singularities:singularity:2>,<singularities:singularity:3>,
  <singularities:singularity:4>,<singularities:singularity:5>,<singularities:singularity:6>,
  <singularities:singularity:7>,<singularities:singularity:8>,<singularities:singularity:9>],

 [<singularities:singularity:10>,<singularities:singularity:11>,<singularities:singularity:12>,
  <singularities:singularity:13>,<singularities:singularity:14>,<singularities:singularity:15>,
  <singularities:singularity:16>,<singularities:singularity:17>,<singularities:singularity:18>],

 [<singularities:singularity:19>,<singularities:singularity:20>,<singularities:singularity:21>,
  <singularities:singularity:22>,<singularities:singularity:23>,<singularities:singularity:24>,
  <singularities:singularity:25>,<singularities:singularity:26>,<singularities:singularity:27>],

 [<singularities:singularity:28>,<singularities:singularity:29>,<singularities:singularity:30>,
  <singularities:singularity:31>,<singularities:singularity:32>,<singularities:singularity:33>,
  <singularities:singularity:34>,<singularities:singularity:35>,<singularities:singularity:36>],

 [<singularities:singularity:37>,<singularities:singularity:38>,<singularities:singularity:39>,
  <singularities:singularity:40>,<singularities:singularity:41>,<singularities:singularity:42>,
  <singularities:singularity:43>,<singularities:singularity:44>,<singularities:singularity:45>],

 [<singularities:singularity:46>,<singularities:singularity:47>,<singularities:singularity:48>,
  <singularities:singularity:49>,<singularities:singularity:50>,<singularities:singularity:51>,
  <singularities:singularity:52>,<singularities:singularity:53>,<singularities:singularity:54>],

 [<singularities:singularity:55>,<singularities:singularity:56>,<singularities:singularity:57>,
  <singularities:singularity:58>,<singularities:singularity:59>,<singularities:singularity:60>,
  <singularities:singularity:62>,<singularities:singularity:66>,<singularities:singularity:74>],

 [<singularities:singularity:76>, <singularities:singularity:78>, <singularities:singularity:79>,
  <singularities:singularity:80>, <singularities:singularity:82>, <singularities:singularity:88>,
  <singularities:singularity:90>, <singularities:singularity:92>, <singularities:singularity:93>],

 [<singularities:singularity:94>, <singularities:singularity:95>, <singularities:singularity:101>,
  <singularities:singularity:118>, <singularities:singularity:200>, <singularities:singularity:201>,
   <avaritia:singularity:2>, <avaritia:singularity:3>, <avaritia:singularity:4>]]);

<avaritia:resource:6>.displayName = "纯反物质锭";
<avaritia:resource:5>.displayName = "反物质催化剂";