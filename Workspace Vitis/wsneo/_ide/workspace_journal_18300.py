# 2025-12-09T11:00:48.142892900
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../temp/neorv32/rtl/system_integration/neorv32_vivado_ip_work/design_1_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",compiler = "gcc")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.create_app_component(name="app_component",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

comp = client.get_component(name="app_component")
status = comp.import_files(from_loc="", files=["C:\Users\MahmoudHc\Desktop\cv32e40p\cv32\addition\src\add.c"], is_skip_copy_sources = False)

status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

vitis.dispose()

