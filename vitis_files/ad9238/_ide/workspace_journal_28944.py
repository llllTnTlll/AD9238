# 2025-11-17T14:24:07.676247700
import vitis

client = vitis.create_client()
client.set_workspace(path="ad9238")

comp = client.create_app_component(name="PsDecoder",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="PsDecoder")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

