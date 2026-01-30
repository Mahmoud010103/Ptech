# 2026-01-02T09:27:39.982833900
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="app_component1")
comp.build()

vitis.dispose()

