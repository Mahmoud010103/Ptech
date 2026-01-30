# 2025-11-24T14:59:01.102174900
import vitis

client = vitis.create_client()
client.set_workspace(path="project_1")

status = client.add_platform_repos(platform=["c:\Users\MahmoudHc\Desktop\ptech\Projet\project_1\platform"])

