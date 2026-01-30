# 2025-12-16T09:24:22.584246700
import vitis

client = vitis.create_client()
client.set_workspace(path="wsri5cy")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="IaApp")
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

vitis.dispose()

