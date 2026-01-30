# 2026-01-21T11:19:59.748485600
import vitis

client = vitis.create_client()
client.set_workspace(path="wsneomult")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

