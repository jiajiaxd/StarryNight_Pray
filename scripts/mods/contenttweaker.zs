/*
 * ZenScript by Hikari_Nova & shang_jun_ & Duantui
 * 未经过授权，禁止用于其他整合包或服务器内容。
 * 此脚本为Contenttweaker自定义物品内容
*/

#priority 500
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.AxisAlignedBB;

//龙细胞
var dragon_cell = VanillaFactory.createItem("dragon_cell");
dragon_cell.maxStackSize = 64;
dragon_cell.creativeTab = <creativetab:misc>;
dragon_cell.register();

//光辐射板函数
function addLEP(id as int) {
    val LEP as Block = VanillaFactory.createBlock("light_emitting_panel_" + id, <blockmaterial:iron>);
    LEP.creativeTab = <creativetab:misc>;
    LEP.entitySpawnable = false;
    LEP.fullBlock = false;
    LEP.axisAlignedBB = AxisAlignedBB.create(0,0,0,1,0.625,1);
    LEP.setToolClass("pickaxe");
    LEP.setToolLevel(id + 1);
    LEP.register();
}

//添加光辐射板
for i in 0 to 3 {
    addLEP(i);
}
