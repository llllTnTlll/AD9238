# 2025-11-26T10:32:54.956939900
import vitis

client = vitis.create_client()
client.set_workspace(path="ad9238_ps")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="ad9238_ps")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

vitis.dispose()

