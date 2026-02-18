# 2025-12-02T13:51:32.290507900
import vitis

client = vitis.create_client()
client.set_workspace(path="neorv32")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../rtl/system_integration/neorv32_vivado_ip_work/design_1_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",compiler = "gcc")

