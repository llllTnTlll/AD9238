# 2025-11-06T13:57:52.469161500
import vitis

client = vitis.create_client()
client.set_workspace(path="ad9238")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="ad9238_PS")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

