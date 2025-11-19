# 2025-11-18T13:23:36.946594
import vitis

client = vitis.create_client()
client.set_workspace(path="ad9238")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="PsDecoder")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

