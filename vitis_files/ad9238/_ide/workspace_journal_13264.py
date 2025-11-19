# 2025-11-04T15:33:24.887757800
import vitis

client = vitis.create_client()
client.set_workspace(path="ad9238")

comp = client.create_app_component(name="ad9238_PS",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="ad9238_PS")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../fpga_prjs/ad9238/design_1_wrapper.xsa")

status = platform.build()

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

