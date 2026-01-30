# 2025-11-25T07:55:29.643204300
import vitis

client = vitis.create_client()
client.set_workspace(path="project_1")

client.delete_component(name="platform1")

client.delete_component(name="platform2")

client.delete_component(name="platform")

client.delete_component(name="componentName")

platform = client.get_component(name="platform3")
status = platform.build()

comp = client.get_component(name="peripheral_tests")
comp.build()

vitis.dispose()

