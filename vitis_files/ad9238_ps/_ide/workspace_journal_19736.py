# 2025-11-25T11:56:04.439225500
import vitis

client = vitis.create_client()
client.set_workspace(path="ad9238_ps")

proj = client.create_sys_project(name="ad9238_ps", platform="$COMPONENT_LOCATION/../../../vivado_files/ad9238/ad9238_hardware.xsa", template="empty_accelerated_application" , build_output_type="xsa")

vitis.dispose()

