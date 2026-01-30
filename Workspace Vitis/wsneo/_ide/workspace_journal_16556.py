# 2026-01-13T08:56:12.349033500
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

comp = client.create_app_component(name="lenet",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

vitis.dispose()

