# 2025-12-16T08:57:52.891588900
import vitis

client = vitis.create_client()
client.set_workspace(path="wsri5cy")

comp = client.create_app_component(name="IaApp",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="IaApp")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.build()

comp = client.get_component(name="IaApp")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

vitis.dispose()

