# 2025-12-02T09:11:49.902157200
import vitis

client = vitis.create_client()
client.set_workspace(path="riky")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

status = platform.build()

comp.build()

vitis.dispose()

