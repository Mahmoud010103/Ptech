# 2026-01-19T08:04:47.450520700
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../temp/neorv32/rtl/system_integration/neorv32_vivado_ip_work/design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="lenet")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../temp/neorv32/rtl/system_integration/neorv32_vivado_ip_work/design_1_wrapper.xsa")

status = platform.build()

component = client.get_component(name="lenet")

lscript = component.get_ld_script(path="C:\Users\MahmoudHc\Desktop\ws\lenet\src\lscript.ld")

lscript.update_memory_region("axi_bram_ctrl_0_memory_0", "0x42000000", "0x4000")

lscript.update_memory_region("axi_bram_ctrl_0_memory_0", "0x42000000", "0x10000")

lscript.update_memory_region("axi_bram_ctrl_1_memory_1", "0x44000000", "0x40000")

status = platform.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../temp/neorv32/rtl/system_integration/neorv32_vivado_ip_work/design_1_wrapper.xsa")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

lscript = component.get_ld_script(path="C:\Users\MahmoudHc\Desktop\wsri5cy\lenet\src\lscript.ld")

lscript.update_memory_region("axi_bram_ctrl_1_memory_1", "0x44000000", "0x40000")

lscript.update_memory_region("axi_bram_ctrl_0_memory_0", "0x42000000", "0x10000")

vitis.dispose()

