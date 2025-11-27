# 2025-11-26T13:41:34.018290100
import vitis

client = vitis.create_client()
client.set_workspace(path="ad9238_ps")

vitis.dispose()

