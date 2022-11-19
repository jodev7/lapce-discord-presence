xdg_data_dir :=  "C:/Users/jodev/AppData/Local/lapce"
plugin_dir := "plugins/jodev7.lapce-discord-rpc"

build:
    cargo make
    
install-stable: build
    mkdir -p {{xdg_data_dir}}/Lapce-stable/data/{{plugin_dir}}/bin
    yes | cp -i bin/discord-rpc.wasm {{xdg_data_dir}}/Lapce-stable/data/{{plugin_dir}}/bin
    yes | cp -i volt.toml {{xdg_data_dir}}/Lapce-stable/data/{{plugin_dir}}/
    yes | cp -i icons/logo.png {{xdg_data_dir}}/Lapce-stable/data/{{plugin_dir}}/

install-debug: build
    mkdir -p {{xdg_data_dir}}/lapce-debug/{{plugin_dir}}/bin
    yes | cp -i bin/discord-rpc.wasm {{xdg_data_dir}}/lapce-debug/{{plugin_dir}}/bin
    yes | cp -i volt.toml {{xdg_data_dir}}/lapce-debug/{{plugin_dir}}
    yes | cp -i icons/logo.png {{xdg_data_dir}}/lapce-stable/{{plugin_dir}}/
