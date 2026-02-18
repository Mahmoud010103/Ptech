# 2025-11-30T09:44:34.489933700
import vitis

client = vitis.create_client()
client.set_workspace(path="riky")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

