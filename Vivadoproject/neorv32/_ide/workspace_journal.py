# 2025-12-09T10:49:57.012082400
import vitis

client = vitis.create_client()
client.set_workspace(path="neorv32")

platform = client.get_component(name="platform1")
status = platform.build()

vitis.dispose()

