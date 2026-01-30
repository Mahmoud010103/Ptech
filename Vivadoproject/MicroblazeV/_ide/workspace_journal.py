# 2026-01-22T08:58:23.144444500
import vitis

client = vitis.create_client()
client.set_workspace(path="project_1")

platform = client.get_component(name="platform3")
status = platform.build()

comp = client.get_component(name="lenet")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

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

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_2_wrapper.xsa")

status = platform.build()

vitis.dispose()

