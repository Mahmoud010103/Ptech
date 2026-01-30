# 2025-12-16T15:04:51.688203700
import vitis

client = vitis.create_client()
client.set_workspace(path="wsri5cy")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="IaApp")
comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../temp/riky/design_1_wrapper.xsa")

status = platform.build()

comp.build()

vitis.dispose()

