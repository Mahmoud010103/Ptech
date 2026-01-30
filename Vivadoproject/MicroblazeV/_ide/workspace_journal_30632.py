# 2026-01-22T08:21:17.993313600
import vitis

client = vitis.create_client()
client.set_workspace(path="project_1")

platform = client.get_component(name="platform3")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_2_wrapper.xsa")

status = platform.build()

comp = client.create_app_component(name="lenet",platform = "$COMPONENT_LOCATION/../platform3/export/platform3/platform3.xpfm",domain = "standalone_microblaze_riscv_0")

comp = client.get_component(name="lenet")
status = comp.import_files(from_loc="", files=["C:\Users\MahmoudHc\Downloads\LENET_5_C_MONO_CORE (2)\LENET_5_C_MONO_CORE\cnn.h", "C:\Users\MahmoudHc\Downloads\LENET_5_C_MONO_CORE (2)\LENET_5_C_MONO_CORE\inputimg.h", "C:\Users\MahmoudHc\Downloads\LENET_5_C_MONO_CORE (2)\LENET_5_C_MONO_CORE\lenet.c", "C:\Users\MahmoudHc\Downloads\LENET_5_C_MONO_CORE (2)\LENET_5_C_MONO_CORE\weights.h"], is_skip_copy_sources = False)

status = platform.build()

comp = client.get_component(name="lenet")
comp.build()

status = platform.build()

comp.build()

component = client.get_component(name="lenet")

lscript = component.get_ld_script(path="C:\Users\MahmoudHc\Desktop\ptech\Projet\project_1\lenet\src\lscript.ld")

lscript.update_memory_region("microblaze_riscv_0_local_memory_dlmb_bram_if_cntlr_memory_0", "0x0", "0x80000")

status = platform.build()

comp.build()

lscript.update_memory_region("microblaze_riscv_0_local_memory_dlmb_bram_if_cntlr_memory_0", "0x0", "0x100000")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

comp = client.get_component(name="lenet")
comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["..", "m"])

status = platform.build()

comp = client.get_component(name="lenet")
comp.build()

comp = client.get_component(name="lenet")
comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["..", "m", "lm"])

status = platform.build()

comp = client.get_component(name="lenet")
comp.build()

comp = client.get_component(name="lenet")
comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["..", "lm"])

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = [".."])

comp.set_app_config(key = "USER_LINK_LIBRARIES", values = ["m"])

status = platform.build()

comp = client.get_component(name="lenet")
comp.build()

lscript.update_memory_region("microblaze_riscv_0_local_memory_dlmb_bram_if_cntlr_memory_0", "0x0", "0x8000")

status = platform.build()

comp.build()

lscript.update_memory_region("microblaze_riscv_0_local_memory_dlmb_bram_if_cntlr_memory_0", "0x0", "0x80000")

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_2_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

