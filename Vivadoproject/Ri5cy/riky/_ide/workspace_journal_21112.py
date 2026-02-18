# 2025-11-30T09:39:18.201583300
import vitis

client = vitis.create_client()
client.set_workspace(path="riky")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

vitis.dispose()

