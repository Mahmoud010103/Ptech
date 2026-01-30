# 2026-01-23T16:29:26.606120100
import vitis

client = vitis.create_client()
client.set_workspace(path="wsneomult")

comp = client.create_app_component(name="lenet",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

comp = client.get_component(name="lenet")
status = comp.import_files(from_loc="", files=["C:\Users\MahmoudHc\Desktop\ws\lenet\src\code.h", "C:\Users\MahmoudHc\Desktop\ws\lenet\src\main.c"], is_skip_copy_sources = False)

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="lenet")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

