# 2025-12-09T12:42:34.755726800
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

comp = client.create_app_component(name="app_component1",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

comp = client.get_component(name="app_component1")
status = comp.import_files(from_loc="", files=["C:\Users\MahmoudHc\Desktop\cv32e40p\cv32\app_component\src\main.c"], is_skip_copy_sources = False)

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="app_component1")
comp.build()

status = platform.build()

status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = comp.clean()

status = platform.build()

comp = client.get_component(name="app_component1")
comp.build()

client.delete_component(name="app_component1")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="app_component")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

comp = client.create_app_component(name="app_component",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

comp = client.get_component(name="app_component")
status = comp.import_files(from_loc="", files=["C:\Users\MahmoudHc\Desktop\cv32e40p\cv32\app_component\src\main.c"], is_skip_copy_sources = False)

status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

comp = client.create_app_component(name="app_component1",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

comp = client.get_component(name="app_component1")
status = comp.import_files(from_loc="", files=["C:\Users\MahmoudHc\Desktop\cv32e40p\cv32\addition\src\add.c"], is_skip_copy_sources = False)

status = platform.build()

comp = client.get_component(name="app_component1")
status = comp.clean()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../temp/neorv32/rtl/system_integration/neorv32_vivado_ip_work/design_1_wrapper.xsa")

status = platform.build()

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

vitis.dispose()

