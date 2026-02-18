# 2025-12-04T15:56:10.552970600
import vitis

client = vitis.create_client()
client.set_workspace(path="riky")

platform = client.get_component(name="platform")
status = platform.build()

vitis.dispose()

