# 2025-11-25T11:30:27.772076200
import vitis

client = vitis.create_client()
client.set_workspace(path="ad9238")

client.delete_component(name="app_component")

client.delete_component(name="componentName")

client.delete_component(name="AD9238")

client.delete_component(name="componentName")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../vivado_files/ad9238/ad9238_hardware.xsa")

status = platform.build()

comp = client.get_component(name="PsDecoder")
comp.build()

status = client.add_platform_repos(platform=["/c:/Users/liuzh/Desktop/high_speed_adc/vitis_prjs/ad9238/platform/export/platform"])

comp = client.create_app_component(name="AD9238",platform = "$COMPONENT_LOCATION/../../../../high_speed_adc/vitis_prjs/ad9238/platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

comp = client.get_component(name="AD9238")
comp.build()

comp.build()

client.delete_component(name="PsDecoder")

comp.build()

comp.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "AD9238_platform",hw_design = "$COMPONENT_LOCATION/../../../vivado_files/ad9238/ad9238_hardware.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="AD9238_platform")
status = platform.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

status = platform.build()

comp.build()

client.delete_component(name="platform")

client.delete_component(name="platform")

domain = platform.get_domain(name="zynq_fsbl")

status = domain.regenerate()

status = platform.build()

comp.build()

vitis.dispose()

