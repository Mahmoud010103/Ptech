# Workspace Vitis - Interface Zynq pour Processeurs RISC-V

Ce répertoire contient le code pour la partie ARM du Zynq qui permet de :
- Programmer les cœurs RISC-V
- Récupérer les résultats d'exécution
- Gérer la communication avec les processeurs RISC-V

## Description

Le code présent dans ce workspace Vitis s'exécute sur le processeur ARM du Zynq et assure l'interface entre :
- Le système hôte qui presente un uart pour la communication avec l'utilisateur facilitant le debug et l'affichage des résultats
- Les processeurs RISC-V (NEORV32, RI5CY) implémentés dans la partie FPGA

