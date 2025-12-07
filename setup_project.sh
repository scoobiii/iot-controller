#!/bin/bash

set -e

echo "==============================================="
echo " Criando Estrutura de Projeto IoT Controller..."
echo "==============================================="

ROOT="iot-controller"

# mkdir -p $ROOT

# -----------------------------------------------------------------------------
# Firmware
# -----------------------------------------------------------------------------
mkdir -p $ROOT/firmware/esp-idf/main
mkdir -p $ROOT/firmware/esp-idf/components
mkdir -p $ROOT/firmware/arduino
mkdir -p $ROOT/firmware/shared

touch $ROOT/firmware/esp-idf/main/controller.c
touch $ROOT/firmware/esp-idf/main/sensors.c
touch $ROOT/firmware/esp-idf/main/outputs.c
touch $ROOT/firmware/esp-idf/main/defrost.c
touch $ROOT/firmware/esp-idf/main/state_machine.c
touch $ROOT/firmware/esp-idf/main/mqtt_client.c
touch $ROOT/firmware/esp-idf/main/config_manager.c
touch $ROOT/firmware/esp-idf/main/kpis.c
touch $ROOT/firmware/esp-idf/main/main.c

touch $ROOT/firmware/esp-idf/CMakeLists.txt
touch $ROOT/firmware/esp-idf/sdkconfig.defaults

touch $ROOT/firmware/arduino/iot_controller.ino

touch $ROOT/firmware/shared/constants.h
touch $ROOT/firmware/shared/device_modes.h
touch $ROOT/firmware/shared/kpi_structs.h

# -----------------------------------------------------------------------------
# Hardware
# -----------------------------------------------------------------------------
mkdir -p $ROOT/hardware/schematics
mkdir -p $ROOT/hardware/pcb/gerbers_v1
mkdir -p $ROOT/hardware/connectors
mkdir -p $ROOT/hardware/bom
mkdir -p $ROOT/hardware/mechanical

touch $ROOT/hardware/connectors/pinout_esp32c3.md
touch $ROOT/hardware/connectors/reles_sensores_map.md
touch $ROOT/hardware/bom/bill_of_materials.xlsx

# -----------------------------------------------------------------------------
# Backend
# -----------------------------------------------------------------------------
mkdir -p $ROOT/backend/api/models
mkdir -p $ROOT/backend/api/routers
mkdir -p $ROOT/backend/api/services

mkdir -p $ROOT/backend/mqtt
mkdir -p $ROOT/backend/analytics
mkdir -p $ROOT/backend/database/migrations

touch $ROOT/backend/api/main.py
touch $ROOT/backend/api/config.py
touch $ROOT/backend/backend_requirements.txt

touch $ROOT/backend/mqtt/ingestion_worker.py
touch $ROOT/backend/mqtt/topics.md
touch $ROOT/backend/mqtt/payload_schemas.json

touch $ROOT/backend/analytics/prophet_predictor.py
touch $ROOT/backend/analytics/kpis_engine.py
touch $ROOT/backend/analytics/anomalies.py

touch $ROOT/backend/database/models.py
touch $ROOT/backend/database/schema_diagram.png

# -----------------------------------------------------------------------------
# Mobile App
# -----------------------------------------------------------------------------
mkdir -p $ROOT/mobile-app/src
mkdir -p $ROOT/mobile-app/screens
mkdir -p $ROOT/mobile-app/components

touch $ROOT/mobile-app/package.json

# -----------------------------------------------------------------------------
# Documentação
# -----------------------------------------------------------------------------
mkdir -p $ROOT/docs/requirements
mkdir -p $ROOT/docs/logic
mkdir -p $ROOT/docs/configuration
mkdir -p $ROOT/docs/diagrams
mkdir -p $ROOT/docs/security
mkdir -p $ROOT/docs/governance

touch $ROOT/docs/requirements/requisitos_negocio.md
touch $ROOT/docs/requirements/requisitos_funcionais.md
touch $ROOT/docs/requirements/requisitos_firmware.md

touch $ROOT/docs/logic/diagrama_uml.md
touch $ROOT/docs/logic/maquina_de_estados.md
touch $ROOT/docs/logic/algoritmo_degelo.md
touch $ROOT/docs/logic/algoritmo_ventiladores.md
touch $ROOT/docs/logic/controle_temperatura.md

touch $ROOT/docs/configuration/parametros_sistema.md
touch $ROOT/docs/configuration/estrutura_config_json.md
touch $ROOT/docs/configuration/glossario_variaveis.md

touch $ROOT/docs/diagrams/uml_state_machine.mmd
touch $ROOT/docs/diagrams/flowchart_algoritmo.mmd
touch $ROOT/docs/diagrams/arquitetura_backend.mmd
touch $ROOT/docs/diagrams/placa_fisica.mmd

touch $ROOT/docs/security/tls.md
touch $ROOT/docs/security/ota_security.md
touch $ROOT/docs/security/access_control.md

touch $ROOT/docs/governance/versioning.md
touch $ROOT/docs/governance/release_process.md
touch $ROOT/docs/governance/code_style.md

# -----------------------------------------------------------------------------
# Test & Tools
# -----------------------------------------------------------------------------
mkdir -p $ROOT/test/firmware
mkdir -p $ROOT/test/backend
mkdir -p $ROOT/test/hardware

mkdir -p $ROOT/tools/scripts

touch $ROOT/tools/flash_firmware.sh
touch $ROOT/tools/build_espidf.sh
touch $ROOT/tools/generate_docs.py

# -----------------------------------------------------------------------------
# Raiz do projeto
# -----------------------------------------------------------------------------
cat <<EOF > $ROOT/README.md
# IoT Controller Project
Controlador IoT para expositores refrigerados e congelados.
Este repositório contém firmware, hardware, backend, documentação e ferramentas.
EOF

cat <<EOF > $ROOT/CHANGELOG.md
# Changelog
Todas as alterações deste projeto serão documentadas aqui (Semantic Versioning).
EOF

touch $ROOT/.gitignore
touch $ROOT/.editorconfig
touch $ROOT/.pre-commit-config.yaml

echo "==============================================="
echo " Estrutura criada com sucesso!"
echo " Diretório: $ROOT"
echo "==============================================="
