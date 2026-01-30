# 2026-01-19T13:35:32.553033300
import vitis

client = vitis.create_client()
client.set_workspace(path="wsri5cy")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="lenet")
comp.build()

status = platform.build()

comp.build()

