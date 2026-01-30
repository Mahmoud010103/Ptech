# 2025-11-24T20:08:23.722460400
import vitis

client = vitis.create_client()
client.set_workspace(path="project_1")

platform = client.create_platform_component(name = "platform3",hw_design = "$COMPONENT_LOCATION/../design_2_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",compiler = "gcc")

comp = client.create_app_component(name="peripheral_tests",platform = "$COMPONENT_LOCATION/../platform3/export/platform3/platform3.xpfm",domain = "standalone_microblaze_riscv_0",template = "peripheral_tests")

vitis.dispose()

