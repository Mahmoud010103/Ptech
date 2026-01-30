# 2026-01-02T13:05:44.954772900
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../temp/neorv32/rtl/system_integration/neorv32_vivado_ip_work/design_1_wrapper.xsa")

status = platform.build()

vitis.dispose()

vitis.dispose()

