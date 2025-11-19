# 2025-11-06T15:12:02.345237100
import vitis

client = vitis.create_client()
client.set_workspace(path="ad9238")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="ad9238_PS")
comp.build()

status = comp.clean()

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

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="ad9238_PS")

comp = client.create_app_component(name="AD9238",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="AD9238")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

