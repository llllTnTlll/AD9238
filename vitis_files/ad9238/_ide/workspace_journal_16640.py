# 2025-11-03T15:52:23.248351500
import vitis

client = vitis.create_client()
client.set_workspace(path="ad9238")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../fpga_prjs/ad9238/design_1_wrapper.xsa")

status = platform.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../fpga_prjs/ad9238/design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../fpga_prjs/ad9238/design_1_wrapper.xsa")

vitis.dispose()

