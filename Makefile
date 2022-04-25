#
# Copyright (C) 2019-2020 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=cypress-firmware
PKG_VERSION:=5.10.9-2022_0321
PKG_RELEASE:=2

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/Infineon/ifx-linux-firmware/
PKG_MIRROR_HASH:=c172e4eeeace312c2a4cfe58c21d2c55583539e87d0c35a1a71046ff65a6de47
PKG_SOURCE_VERSION:=release-v$(PKG_VERSION)

PKG_MAINTAINER:=Álvaro Fernández Rojas <noltari@gmail.com>
PKG_LICENSE_FILES:=LICENCE

include $(INCLUDE_DIR)/package.mk

define Package/cypress-firmware-default
  SECTION:=firmware
  CATEGORY:=Firmware
  URL:=https://community.infineon.com/
endef

define Build/Compile
	true
endef

# Cypress 43012 SDIO Firmware
define Package/cypress-firmware-43012-sdio
  $(Package/cypress-firmware-default)
  TITLE:=CYW43012 FullMac SDIO firmware
endef

define Package/cypress-firmware-43012-sdio/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac43012-sdio.bin \
		$(1)/lib/firmware/brcm/brcmfmac43012-sdio.bin
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac43012-sdio.clm_blob \
		$(1)/lib/firmware/brcm/brcmfmac43012-sdio.clm_blob
endef

$(eval $(call BuildPackage,cypress-firmware-43012-sdio))

# Cypress 43340 SDIO Firmware
define Package/cypress-firmware-43340-sdio
  $(Package/cypress-firmware-default)
  TITLE:=CYW43340 FullMac SDIO firmware
endef

define Package/cypress-firmware-43340-sdio/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac43340-sdio.bin \
		$(1)/lib/firmware/brcm/brcmfmac43340-sdio.bin
endef

$(eval $(call BuildPackage,cypress-firmware-43340-sdio))

# Cypress 43362 SDIO Firmware
define Package/cypress-firmware-43362-sdio
  $(Package/cypress-firmware-default)
  TITLE:=CYW43362 FullMac SDIO firmware
  PROVIDES:=brcmfmac-firmware-43362-sdio
  CONFLICTS:=brcmfmac-firmware-43362-sdio
endef

define Package/cypress-firmware-43362-sdio/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac43362-sdio.bin \
		$(1)/lib/firmware/brcm/brcmfmac43362-sdio.bin
endef

$(eval $(call BuildPackage,cypress-firmware-43362-sdio))

# Cypress 4339 SDIO Firmware
define Package/cypress-firmware-4339-sdio
  $(Package/cypress-firmware-default)
  TITLE:=CYW4339 FullMac SDIO firmware
endef

define Package/cypress-firmware-4339-sdio/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac4339-sdio.bin \
		$(1)/lib/firmware/brcm/brcmfmac4339-sdio.bin
endef

$(eval $(call BuildPackage,cypress-firmware-4339-sdio))

# Cypress 43430 SDIO Firmware
define Package/cypress-firmware-43430-sdio
  $(Package/cypress-firmware-default)
  TITLE:=CYW43430 FullMac SDIO firmware
  PROVIDES:=brcmfmac-firmware-43430-sdio
  CONFLICTS:=brcmfmac-firmware-43430-sdio
endef

define Package/cypress-firmware-43430-sdio/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac43430-sdio.bin \
		$(1)/lib/firmware/brcm/brcmfmac43430-sdio.bin
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac43430-sdio.clm_blob \
		$(1)/lib/firmware/brcm/brcmfmac43430-sdio.clm_blob
endef

$(eval $(call BuildPackage,cypress-firmware-43430-sdio))

# Cypress 43439 SDIO Firmware
define Package/cypress-firmware-43439-sdio
  $(Package/cypress-firmware-default)
  TITLE:=CYW43439 FullMac SDIO firmware
  PROVIDES:=cyfmac-firmware-43439-sdio
  CONFLICTS:=cyfmac-firmware-43439-sdio
endef

define Package/cypress-firmware-43439-sdio/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac43439-sdio.bin \
		$(1)/lib/firmware/brcm/brcmfmac43439-sdio.bin
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac43439-sdio.clm_blob \
		$(1)/lib/firmware/brcm/brcmfmac43439-sdio.clm_blob
endef

$(eval $(call BuildPackage,cypress-firmware-43439-sdio))

# Cypress 43455 SDIO Firmware
define Package/cypress-firmware-43455-sdio
  $(Package/cypress-firmware-default)
  TITLE:=CYW43455 FullMac SDIO firmware
  PROVIDES:=brcmfmac-firmware-43455-sdio
  CONFLICTS:=brcmfmac-firmware-43455-sdio
endef

define Package/cypress-firmware-43455-sdio/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac43455-sdio.bin \
		$(1)/lib/firmware/brcm/brcmfmac43455-sdio.bin
	$(LN) brcmfmac43455-sdio.bin \
		$(1)/lib/firmware/brcm/brcmfmac43455-sdio.raspberrypi,4-model-b.bin
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac43455-sdio.clm_blob \
		$(1)/lib/firmware/brcm/brcmfmac43455-sdio.clm_blob
endef

$(eval $(call BuildPackage,cypress-firmware-43455-sdio))

# Cypress 4354 SDIO Firmware
define Package/cypress-firmware-4354-sdio
  $(Package/cypress-firmware-default)
  TITLE:=CYW4354 FullMac SDIO firmware
endef

define Package/cypress-firmware-4354-sdio/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac4354-sdio.bin \
		$(1)/lib/firmware/brcm/brcmfmac4354-sdio.bin
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac4354-sdio.clm_blob \
		$(1)/lib/firmware/brcm/brcmfmac4354-sdio.clm_blob
endef

$(eval $(call BuildPackage,cypress-firmware-4354-sdio))

# Cypress 4356 PCIe Firmware
define Package/cypress-firmware-4356-pcie
  $(Package/cypress-firmware-default)
  TITLE:=CYW4356 FullMac PCIe firmware
endef

define Package/cypress-firmware-4356-pcie/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac4356-pcie.bin \
		$(1)/lib/firmware/brcm/brcmfmac4356-pcie.bin
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac4356-pcie.clm_blob \
		$(1)/lib/firmware/brcm/brcmfmac4356-pcie.clm_blob
endef

$(eval $(call BuildPackage,cypress-firmware-4356-pcie))

# Cypress 4356 SDIO Firmware
define Package/cypress-firmware-4356-sdio
  $(Package/cypress-firmware-default)
  TITLE:=CYW4356 FullMac SDIO firmware
endef

define Package/cypress-firmware-4356-sdio/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac4356-sdio.bin \
		$(1)/lib/firmware/brcm/brcmfmac4356-sdio.bin
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac4356-sdio.clm_blob \
		$(1)/lib/firmware/brcm/brcmfmac4356-sdio.clm_blob
endef

$(eval $(call BuildPackage,cypress-firmware-4356-sdio))

# Cypress 43570 PCIe Firmware
define Package/cypress-firmware-43570-pcie
  $(Package/cypress-firmware-default)
  TITLE:=CYW43570 FullMac PCIe firmware
endef

define Package/cypress-firmware-43570-pcie/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac43570-pcie.bin \
		$(1)/lib/firmware/brcm/brcmfmac43570-pcie.bin
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac43570-pcie.clm_blob \
		$(1)/lib/firmware/brcm/brcmfmac43570-pcie.clm_blob
endef

$(eval $(call BuildPackage,cypress-firmware-43570-pcie))

# Cypress 4373 PCIe Firmware
define Package/cypress-firmware-4373-pcie
  $(Package/cypress-firmware-default)
  TITLE:=CYW4373 FullMac PCIe firmware
endef

define Package/cypress-firmware-4373-pcie/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac4373-pcie.bin \
		$(1)/lib/firmware/brcm/brcmfmac4373-pcie.bin
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac4373-pcie.clm_blob \
		$(1)/lib/firmware/brcm/brcmfmac4373-pcie.clm_blob
endef

$(eval $(call BuildPackage,cypress-firmware-4373-pcie))

# Cypress 4373 SDIO Firmware
define Package/cypress-firmware-4373-sdio
  $(Package/cypress-firmware-default)
  TITLE:=CYW4373 FullMac SDIO firmware
endef

define Package/cypress-firmware-4373-sdio/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac4373-sdio.bin \
		$(1)/lib/firmware/brcm/brcmfmac4373-sdio.bin
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac4373-sdio.clm_blob \
		$(1)/lib/firmware/brcm/brcmfmac4373-sdio.clm_blob
endef

$(eval $(call BuildPackage,cypress-firmware-4373-sdio))

# Cypress 4373 USB Firmware
define Package/cypress-firmware-4373-usb
  $(Package/cypress-firmware-default)
  TITLE:=CYW4373 FullMac USB firmware
endef

define Package/cypress-firmware-4373-usb/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac4373-usb.bin \
		$(1)/lib/firmware/brcm/brcmfmac4373-usb.bin
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac4373.clm_blob \
		$(1)/lib/firmware/brcm/brcmfmac4373.clm_blob
endef

$(eval $(call BuildPackage,cypress-firmware-4373-usb))

# Cypress 54591 PCIe Firmware
define Package/cypress-firmware-54591-pcie
  $(Package/cypress-firmware-default)
  TITLE:=CYW54591 FullMac PCIe firmware
endef

define Package/cypress-firmware-54591-pcie/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac54591-pcie.bin \
		$(1)/lib/firmware/brcm/brcmfmac54591-pcie.bin
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac54591-pcie.clm_blob \
		$(1)/lib/firmware/brcm/brcmfmac54591-pcie.clm_blob
endef

$(eval $(call BuildPackage,cypress-firmware-54591-pcie))

# Cypress 54591 SDIO Firmware
define Package/cypress-firmware-54591-sdio
  $(Package/cypress-firmware-default)
  TITLE:=CYW54591 FullMac SDIO firmware
endef

define Package/cypress-firmware-54591-sdio/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac54591-sdio.bin \
		$(1)/lib/firmware/brcm/brcmfmac54591-sdio.bin
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/firmware/cyfmac54591-sdio.clm_blob \
		$(1)/lib/firmware/brcm/brcmfmac54591-sdio.clm_blob
endef

$(eval $(call BuildPackage,cypress-firmware-54591-sdio))
