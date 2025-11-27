# 2025-11-26T11:26:30.095768600
import vitis

client = vitis.create_client()
client.set_workspace(path="ad9238_ps")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="ad9238_ps")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

