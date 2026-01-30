## =============================================================================
## UART Interface via PMOD Port 1
## =============================================================================
##	Bank:			11
##	VCCO:			2.5V (VADJ)
##	Location:		J58 (PMOD Port 1)
## =============================================================================

## UART RXD - PMOD1_0 (J58.1)
set_property PACKAGE_PIN	AJ21				[get_ports uart_rtl_rxd]
set_property IOSTANDARD		LVCMOS25			[get_ports uart_rtl_rxd]

## UART TXD - PMOD1_1 (J58.3)
set_property PACKAGE_PIN	AK21				[get_ports uart_rtl_txd]
set_property IOSTANDARD		LVCMOS25			[get_ports uart_rtl_txd]

## Ignore timings on async UART pins
set_false_path -from [get_ports uart_rtl_rxd]
set_false_path -to   [get_ports uart_rtl_txd]