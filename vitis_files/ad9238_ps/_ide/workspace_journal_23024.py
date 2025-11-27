# 2025-11-26T13:19:13.346254200
import vitis

client = vitis.create_client()
client.set_workspace(path="ad9238_ps")

comp = client.get_component(name="ad9238_ps")
status = comp.clean()

platform = client.get_component(name="platform")
status = platform.build()

comp.build()

vitis.dispose()

