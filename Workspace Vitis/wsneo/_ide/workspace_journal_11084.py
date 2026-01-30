# 2026-01-19T13:13:54.838505200
import vitis

client = vitis.create_client()
client.set_workspace(path="ws")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="lenet")
comp.build()

vitis.dispose()

