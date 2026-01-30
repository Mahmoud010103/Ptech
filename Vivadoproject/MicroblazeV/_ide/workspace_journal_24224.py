# 2025-11-24T10:36:09.229346
import vitis

client = vitis.create_client()
client.set_workspace(path="project_1")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../design_2_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

vitis.dispose()

vitis.dispose()

