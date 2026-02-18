# 2025-12-02T13:53:26.806865200
import vitis

client = vitis.create_client()
client.set_workspace(path="riky")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../neorv32/rtl/system_integration/neorv32_vivado_ip_work/design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

status = platform.build()

