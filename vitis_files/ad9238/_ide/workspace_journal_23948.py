# 2025-11-06T17:10:04.862122100
import vitis

client = vitis.create_client()
client.set_workspace(path="ad9238")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="AD9238")
comp.build()

vitis.dispose()

