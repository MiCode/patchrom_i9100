.class public Lcom/android/server/enterprise/EdmStorageDefs;
.super Ljava/lang/Object;
.source "EdmStorageDefs.java"


# static fields
.field public static final ADMIN_CAN_REMOVE:Ljava/lang/String; = "canRemove"

.field public static final ADMIN_NAME:Ljava/lang/String; = "adminName"

.field public static final ADMIN_TABLE:Ljava/lang/String; = "ADMIN"

.field public static final ADMIN_UID:Ljava/lang/String; = "adminUid"

.field public static final APP_API:Ljava/lang/String; = "APPLICATION"

.field public static final APP_CONTROL_STATE:Ljava/lang/String; = "controlState"

.field public static final APP_ENTERPRISE_FLAG:I = 0x1

.field public static final APP_GENERAL_TABLE:Ljava/lang/String; = "APPLICATION_GENERAL"

.field public static final APP_INSTALL_COUNT:Ljava/lang/String; = "applicationInstallationCount"

.field public static final APP_INSTALL_SOURCE_MDM:Ljava/lang/String; = "install_sourceMDM"

.field public static final APP_INSTALL_SOURCE_MDM_FLAG:I = 0x1

.field public static final APP_INSTALL_TO_SD_CARD:Ljava/lang/String; = "installToSdCard"

.field public static final APP_INSTALL_TO_SD_CARD_DEFAULT:Z = false

.field public static final APP_MANAGED_APP:Ljava/lang/String; = "managedApp"

.field public static final APP_MISC_TABLE:Ljava/lang/String; = "APPLICATION_MISC"

.field public static final APP_NOTIFICATION_MODE:Ljava/lang/String; = "appNotificationMode"

.field public static final APP_NOTIFICATION_MODE_DEFAULT:I = 0x2

.field public static final APP_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final APP_PERMISSION:Ljava/lang/String; = "permission"

.field public static final APP_PERMISSION_CONTROL_TABLE:Ljava/lang/String; = "APPLICATION_PERMISSIONCONTROL"

.field public static final APP_PERMISSION_TABLE:Ljava/lang/String; = "APPLICATION_PERMISSION"

.field public static final APP_PKGNAME_INSTALLATION_BLACKLIST_MASK:I = 0x4

.field public static final APP_PKGNAME_INSTALLATION_WHITELIST_MASK:I = 0x8

.field public static final APP_PKGNAME_NOTIFICATION_BLACKLIST_MASK:I = 0x100

.field public static final APP_PKGNAME_NOTIFICATION_WHITELIST_MASK:I = 0x200

.field public static final APP_PKGNAME_STOP_BLACKLIST_MASK:I = 0x10

.field public static final APP_PKGNAME_STOP_WHITELIST_MASK:I = 0x20

.field public static final APP_PKGNAME_WIDGET_BLACKLIST_MASK:I = 0x40

.field public static final APP_PKGNAME_WIDGET_WHITELIST_MASK:I = 0x80

.field public static final APP_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final APP_SIGNATURE_TABLE:Ljava/lang/String; = "APPLICATION_SIGNATURE"

.field public static final APP_STATE_DISABLED_MASK:I = 0x2

.field public static final APP_UNINSTALLATION_BLACKLIST_MASK:I = 0x1

.field public static final APP_UNINSTALLATION_WHITELIST_MASK:I = 0x400

.field public static final APP_UNINSTALL_COUNT:Ljava/lang/String; = "applicationUninstallationCount"

.field public static final APP_WIDGET_WHITELIST_ENABLED:Ljava/lang/String; = "widgetWhitelistEnabled"

.field public static final APP_WIDGET_WHITELIST_ENABLED_DEFAULT:Z = false

.field public static final BLUETOOTH_A2DP_PROFILE_ENABLED:Ljava/lang/String; = "profileA2DPEnabled"

.field public static final BLUETOOTH_ALLOW_DATA_TRANSFER:Ljava/lang/String; = "allowDataTransfer"

.field public static final BLUETOOTH_ALLOW_DATA_TRANSFER_DEFAULT:Z = true

.field public static final BLUETOOTH_ALLOW_OUTGOING_CALLS:Ljava/lang/String; = "allowOutgoingCalls"

.field public static final BLUETOOTH_ALLOW_OUTGOING_CALLS_DEFAULT:Z = true

.field public static final BLUETOOTH_API:Ljava/lang/String; = "BLUETOOTH"

.field public static final BLUETOOTH_AVRCP_PROFILE_ENABLED:Ljava/lang/String; = "profileAVRCPEnabled"

.field public static final BLUETOOTH_BPP_PROFILE_ENABLED:Ljava/lang/String; = "profileBPPEnabled"

.field public static final BLUETOOTH_DESKTOP_CONNECTIVITY_ENABLED:Ljava/lang/String; = "desktopConnectivityEnabled"

.field public static final BLUETOOTH_DESKTOP_CONNECTIVITY_ENABLED_DEFAULT:Z = true

.field public static final BLUETOOTH_DEVICEPOLICY_DEFAULT:Z = false

.field public static final BLUETOOTH_DEVICEPOLICY_STATE:Ljava/lang/String; = "devicePolicyEnabled"

.field public static final BLUETOOTH_DEVICE_BWLIST:Ljava/lang/String; = "BLUETOOTH_DEVICE_BWLIST"

.field public static final BLUETOOTH_DISCOVERABLE_MODE_ENABLED:Ljava/lang/String; = "discoverableModeEnabled"

.field public static final BLUETOOTH_DISCOVERABLE_MODE_ENABLED_DEFAULT:Z = true

.field public static final BLUETOOTH_DUN_PROFILE_ENABLED:Ljava/lang/String; = "profileDUNEnabled"

.field public static final BLUETOOTH_ENABLED:Ljava/lang/String; = "bluetoothEnabled"

.field public static final BLUETOOTH_ENABLED_DEFAULT:Z = true

.field public static final BLUETOOTH_FTP_PROFILE_ENABLED:Ljava/lang/String; = "profileFTPEnabled"

.field public static final BLUETOOTH_HFP_PROFILE_ENABLED:Ljava/lang/String; = "profileHFPEnabled"

.field public static final BLUETOOTH_HSP_PROFILE_ENABLED:Ljava/lang/String; = "profileHSPEnabled"

.field public static final BLUETOOTH_LIMITED_DISCOVERABLE_ENABLED:Ljava/lang/String; = "limitedDiscoverableEnabled"

.field public static final BLUETOOTH_LIMITED_DISCOVERABLE_ENABLED_DEFAULT:Z = true

.field public static final BLUETOOTH_LOG:Ljava/lang/String; = "log"

.field public static final BLUETOOTH_LOG_ENABLED:Ljava/lang/String; = "bluetoothLogEnabled"

.field public static final BLUETOOTH_LOG_ENABLED_DEFAULT:Z = false

.field public static final BLUETOOTH_LOG_PKEY:Ljava/lang/String; = "id"

.field public static final BLUETOOTH_LOG_TABLE:Ljava/lang/String; = "BluetoothLogTable"

.field public static final BLUETOOTH_PAIRING_ENABLED:Ljava/lang/String; = "pairingEnabled"

.field public static final BLUETOOTH_PAIRING_ENABLED_DEFAULT:Z = true

.field public static final BLUETOOTH_PBAP_PROFILE_ENABLED:Ljava/lang/String; = "profilePBAPEnabled"

.field public static final BLUETOOTH_PROFILEPOLICY_DEFAULT:Z = false

.field public static final BLUETOOTH_PROFILEPOLICY_STATE:Ljava/lang/String; = "profilePolicyEnabled"

.field public static final BLUETOOTH_PROFILE_BWLIST:Ljava/lang/String; = "BLUETOOTH_PROFILE_BWLIST"

.field public static final BLUETOOTH_PROFILE_SETTINGS:Ljava/lang/String; = "profileSettings"

.field public static final BLUETOOTH_PROFILE_SETTINGS_DEFAULT:I = 0xffff

.field public static final BLUETOOTH_SAP_PROFILE_ENABLED:Ljava/lang/String; = "profileSAPEnabled"

.field public static final BLUETOOTH_SPP_PROFILE_ENABLED:Ljava/lang/String; = "profileSPPEnabled"

.field public static final BLUETOOTH_TIMESTAMP:Ljava/lang/String; = "time"

.field public static final BROWSER_API:Ljava/lang/String; = "BROWSER"

.field public static final BROWSER_AUTOFILL_ENABLED:Ljava/lang/String; = "autoFillEnabled"

.field public static final BROWSER_COOKIES_ENABLED:Ljava/lang/String; = "cookiesEnabled"

.field public static final BROWSER_FORCEFRAUDWARNING_ENABLED:Ljava/lang/String; = "forceFraudWarningEnabled"

.field public static final BROWSER_JAVASCRIPT_ENABLED:Ljava/lang/String; = "javaScriptEnabled"

.field public static final BROWSER_POPUP_ENABLED:Ljava/lang/String; = "popupEnabled"

.field public static final BROWSER_SETTINGS:Ljava/lang/String; = "browserSettings"

.field public static final BROWSER_SETTINGS_DEFAULT:I = 0x17

.field public static final BWLIST_BLACK:Ljava/lang/String; = "BlackList"

.field public static final BWLIST_LIST_TYPE:Ljava/lang/String; = "ListType"

.field public static final BWLIST_OBJECT:Ljava/lang/String; = "Object"

.field public static final BWLIST_POLICY_STATE:Ljava/lang/String; = "policyState"

.field public static final BWLIST_WHITE:Ljava/lang/String; = "WhiteList"

.field public static final CALLING_API:Ljava/lang/String; = "CALLING"

.field public static final CALLING_CB_FACILITY_BAIC:Ljava/lang/String; = "AI"

.field public static final CALLING_CB_FACILITY_BAICr:Ljava/lang/String; = "IR"

.field public static final CALLING_CB_FACILITY_BAOC:Ljava/lang/String; = "AO"

.field public static final CALLING_CB_FACILITY_BAOIC:Ljava/lang/String; = "OI"

.field public static final CALLING_CB_FACILITY_BAOICxH:Ljava/lang/String; = "OX"

.field public static final CALLING_CB_PWD:Ljava/lang/String; = "cbPwd"

.field public static final CALLING_CF_REASON_BUSY:Ljava/lang/String; = "cfBusy"

.field public static final CALLING_CF_REASON_BUSY_ENABLED:Ljava/lang/String; = "cfBusyEnabled"

.field public static final CALLING_CF_REASON_NOT_REACHABLE:Ljava/lang/String; = "cfNotReachable"

.field public static final CALLING_CF_REASON_NOT_REACHABLE_ENABLED:Ljava/lang/String; = "cfNotReachableEnabled"

.field public static final CALLING_CF_REASON_NO_REPLY:Ljava/lang/String; = "cfNoReply"

.field public static final CALLING_CF_REASON_NO_REPLY_ENABLED:Ljava/lang/String; = "cfNoReplyEnabled"

.field public static final CALLING_CF_REASON_UNCONDITIONAL:Ljava/lang/String; = "cfUnconditional"

.field public static final CALLING_CF_REASON_UNCONDITIONAL_ENABLED:Ljava/lang/String; = "cfUnconditionalEnabled"

.field public static final CALLING_IS_SET:Ljava/lang/String; = "isSet"

.field public static final CALLING_LAST_CHANGE_ID:Ljava/lang/String; = "lastChangeId"

.field public static final CALLING_LOG_ADDRESS:Ljava/lang/String; = "callingAddress"

.field public static final CALLING_LOG_API:Ljava/lang/String; = "CallingLog"

.field public static final CALLING_LOG_DURATION:Ljava/lang/String; = "callingDuration"

.field public static final CALLING_LOG_STATUS:Ljava/lang/String; = "callingStatus"

.field public static final CALLING_LOG_TIMESTAMP:Ljava/lang/String; = "callingTimeStamp"

.field public static final CALLING_LOG_TYPE:Ljava/lang/String; = "callingType"

.field public static final CHANGE_LOCK_SCREEN_STRING:Ljava/lang/String; = "lockscreenstring"

.field public static final DATA_CALL_LOG_API:Ljava/lang/String; = "DATACALLLOG"

.field public static final DATA_CALL_LOG_BYTES:Ljava/lang/String; = "dataCallBytes"

.field public static final DATA_CALL_LOG_DATETIME:Ljava/lang/String; = "dataCallDate"

.field public static final DATA_CALL_LOG_NET_TYPE:Ljava/lang/String; = "dataCallNetType"

.field public static final DATA_CALL_LOG_STATUS:Ljava/lang/String; = "dataCallStatus"

.field public static final DEVICE_API:Ljava/lang/String; = "DEVICE"

.field public static final DEVICE_INFO_DROPPED_CALL:Ljava/lang/String; = "dropped"

.field public static final DEVICE_INFO_MISSED_CALL:Ljava/lang/String; = "missed"

.field public static final DEVICE_INFO_SUCCESS_CALL:Ljava/lang/String; = "success"

.field public static final DEVICE_NETWORK_RECEIVED:Ljava/lang/String; = "deviceNetworkReceived"

.field public static final DEVICE_NETWORK_SENT:Ljava/lang/String; = "deviceNetworkSent"

.field public static final DEVICE_WIFI_RECEIVED:Ljava/lang/String; = "deviceWifiReceived"

.field public static final DEVICE_WIFI_SENT:Ljava/lang/String; = "deviceWifiSent"

.field public static final EAS_ALLOW_BROWSER:Ljava/lang/String; = "allowBrowser"

.field public static final EAS_ALLOW_BROWSER_DEFAULT:Z = true

.field public static final EAS_ALLOW_DESKTOP_SYNC:Ljava/lang/String; = "allowDesktopSync"

.field public static final EAS_ALLOW_DESKTOP_SYNC_DEFAULT:Z = true

.field public static final EAS_ALLOW_HTML_EMAIL:Ljava/lang/String; = "allowHTMLEmail"

.field public static final EAS_ALLOW_HTML_EMAIL_DEFAULT:Z = true

.field public static final EAS_ALLOW_IRDA:Ljava/lang/String; = "allowIrDA"

.field public static final EAS_ALLOW_IRDA_DEFAULT:Z = true

.field public static final EAS_ALLOW_POP_IMAP_EMAIL:Ljava/lang/String; = "allowPOPIMAPEmail"

.field public static final EAS_ALLOW_POP_IMAP_EMAIL_DEFAULT:Z = true

.field public static final EAS_ALLOW_SMIME_ENCRYPTION_ALGORITHM_NEGOTIATION:Ljava/lang/String; = "allowSMIMEEncryptionAlgorithmNegotiation"

.field public static final EAS_ALLOW_SMIME_ENCRYPTION_ALGORITHM_NEGOTIATION_DEFAULT:Z = true

.field public static final EAS_ALLOW_SMIME_SOFT_CERTS:Ljava/lang/String; = "allowSMIMESoftCerts"

.field public static final EAS_ALLOW_SMIME_SOFT_CERTS_DEFAULT:Z = true

.field public static final EAS_ALLOW_STORAGE_CARD:Ljava/lang/String; = "allowStorageCard"

.field public static final EAS_ALLOW_STORAGE_CARD_DEFAULT:Z = false

.field public static final EAS_ALLOW_TEXT_MESSAGING:Ljava/lang/String; = "allowTextMessaging"

.field public static final EAS_ALLOW_TEXT_MESSAGING_DEFAULT:Z = true

.field public static final EAS_API:Ljava/lang/String; = "EAS"

.field public static final EAS_ATTACHMENTS_ENABLED:Ljava/lang/String; = "attachmentsEnabled"

.field public static final EAS_ATTACHMENTS_ENABLED_DEFAULT:Z = true

.field public static final EAS_ATTACHMENT_SIZE:Ljava/lang/String; = "maxAttachmentSize"

.field public static final EAS_ATTACHMENT_SIZE_DEFAULT:I = 0x0

.field public static final EAS_MAX_CALENDAR_AGE:Ljava/lang/String; = "maxCalendarAge"

.field public static final EAS_MAX_CALENDAR_AGE_DEFAULT:I = 0x7

.field public static final EAS_MAX_EMAIL_AGE:Ljava/lang/String; = "maxEmailAge"

.field public static final EAS_MAX_EMAIL_AGE_DEFAULT:I = 0x3

.field public static final EAS_MAX_EMAIL_BODY_TRUNC_SIZE:Ljava/lang/String; = "maxEmailBodyTruncSize"

.field public static final EAS_MAX_EMAIL_BODY_TRUNC_SIZE_DEFAULT:I = 0x3

.field public static final EAS_MAX_HTML_EMAIL_BODY_TRUNC_SIZE:Ljava/lang/String; = "maxHtmlEmailBodyTruncSize"

.field public static final EAS_MAX_HTML_EMAIL_BODY_TRUNC_SIZE_DEFAULT:I = 0x3

.field public static final EAS_MIN_PASSWORD_COMPLEX_CHARS:Ljava/lang/String; = "minPasswordComplexChars"

.field public static final EAS_MIN_PASSWORD_COMPLEX_CHARS_DEFAULT:I = 0x0

.field public static final EAS_PASSWORD_EXPIRES:Ljava/lang/String; = "easPasswordExpires"

.field public static final EAS_PASSWORD_EXPIRES_DEFAULT:I = 0x0

.field public static final EAS_PASSWORD_HISTORY:Ljava/lang/String; = "passwordHistory"

.field public static final EAS_PASSWORD_HISTORY_DEFAULT:I = 0x0

.field public static final EAS_PASSWORD_RECOVERABLE:Ljava/lang/String; = "passwordRecoverable"

.field public static final EAS_PASSWORD_RECOVERABLE_DEFAULT:Z = false

.field public static final EAS_REQUIRE_DEVICE_ENCRYPTION:Ljava/lang/String; = "requireDeviceEncryption"

.field public static final EAS_REQUIRE_DEVICE_ENCRYPTION_DEFAULT:Z = false

.field public static final EAS_REQUIRE_ENCRYPTED_SMIME_MESSAGES:Ljava/lang/String; = "requireEncryptedSMIMEMessages"

.field public static final EAS_REQUIRE_ENCRYPTED_SMIME_MESSAGES_DEFAULT:Z = false

.field public static final EAS_REQUIRE_ENCRYPTION_SMIME_ALGORITHM:Ljava/lang/String; = "requireEncryptionSMIMEAlgorithm"

.field public static final EAS_REQUIRE_ENCRYPTION_SMIME_ALGORITHM_DEFAULT:Z = false

.field public static final EAS_REQUIRE_MANUAL_SYNC_ROAMING:Ljava/lang/String; = "requireManualSyncRoaming"

.field public static final EAS_REQUIRE_MANUAL_SYNC_ROAMING_DEFAULT:Z = true

.field public static final EAS_REQUIRE_SIGNED_SMIME_ALGORITHM:Ljava/lang/String; = "requireSignedSMIMEAlgorithm"

.field public static final EAS_REQUIRE_SIGNED_SMIME_ALGORITHM_DEFAULT:Z = false

.field public static final EAS_REQUIRE_SIGNED_SMIME_MESSAGE:Ljava/lang/String; = "requireSignedSMIMEMessages"

.field public static final EAS_REQUIRE_SIGNED_SMIME_MESSAGE_DEFAULT:Z = true

.field public static final EAS_REQUIRE_STORAGE_CARD_ENCRYPTYON:Ljava/lang/String; = "requireStorageCardEncryption"

.field public static final EAS_REQUIRE_STORAGE_CARD_ENCRYPTYON_DEFAULT:Z = false

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "EmailAddress"

.field public static final EMAIL_ALLOW_FORWARD:Ljava/lang/String; = "EmailAllowForward"

.field public static final EMAIL_ALLOW_FORWARD_DEFAULT:Z = true

.field public static final EMAIL_API:Ljava/lang/String; = "EmailSettingsTable"

.field public static final EMAIL_ENCRYPT_CERT_NAME:Ljava/lang/String; = "EmailEncryptCertName"

.field public static final EMAIL_REQ_ENCRYPT_SMIME:Ljava/lang/String; = "EmailReqEncryptSmime"

.field public static final EMAIL_REQ_ENCRYPT_SMIME_DEFAULT:Z = false

.field public static final EMAIL_REQ_SIG_SMIME:Ljava/lang/String; = "EmailReqSigSmime"

.field public static final EMAIL_REQ_SIG_SMIME_DEFAULT:Z = false

.field public static final EMAIL_SIG_CERT_NAME:Ljava/lang/String; = "EmailSigningCertName"

.field public static final FIREWALL_ENABLED:Ljava/lang/String; = "enabled"

.field public static final FIREWALL_MARKET_NETWORK:Ljava/lang/String; = "MarketNetworkType"

.field public static final FIREWALL_MARKET_NETWORK_DEFAULT:I = 0x0

.field public static final FIREWALL_RULEID:Ljava/lang/String; = "ruleId"

.field public static final FIREWALL_RULES:Ljava/lang/String; = "rules"

.field public static final FIREWALL_TABLE:Ljava/lang/String; = "FirewallTable"

.field public static final FIREWALL_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final FIREWALL_TYPE:Ljava/lang/String; = "type"

.field public static final GENERIC_APP_DISABLED_WIDGET_COMPONENTS:Ljava/lang/String; = "disabledWidgetComponents"

.field public static final GENERIC_NAME:Ljava/lang/String; = "name"

.field public static final GENERIC_NAME_APP_INSTALLATION_MODE:Ljava/lang/String; = "app_install_mode"

.field public static final GENERIC_TABLE:Ljava/lang/String; = "generic"

.field public static final GENERIC_VALUE:Ljava/lang/String; = "value"

.field public static final GENERIC_WIFI_LAST_SSID:Ljava/lang/String; = "networkLastSSID"

.field public static final KIOSKMODE_API:Ljava/lang/String; = "KIOSKMODE"

.field public static final KIOSKMODE_BLOCKED_HW_KEYS:Ljava/lang/String; = "blockedHwKeyList"

.field public static final KIOSKMODE_DEFAULT_PACKAGE:Ljava/lang/String; = "kioskModeDefaultPackage"

.field public static final KIOSKMODE_ENABLED:Ljava/lang/String; = "kioskModeEnabled"

.field public static final KIOSKMODE_ENABLED_DEFAULT:Z = false

.field public static final KIOSKMODE_KIOSK_PACKAGE:Ljava/lang/String; = "kioskModeKioskPackage"

.field public static final KIOSKMODE_SYSTEM_BAR_HIDDEN:Ljava/lang/String; = "systemBarEnabled"

.field public static final KIOSKMODE_SYSTEM_BAR_HIDDEN_DEFAULT:Z = false

.field public static final KIOSKMODE_TASK_MANAGER_ALLOWED:Ljava/lang/String; = "taskManagerEnabled"

.field public static final KIOSKMODE_TASK_MANAGER_ALLOWED_DEFAULT:Z = true

.field public static final LIMIT_DATA_CALL_BY_DAY:I = 0x0

.field public static final LIMIT_DATA_CALL_BY_MONTH:I = 0x2

.field public static final LIMIT_DATA_CALL_BY_WEEK:I = 0x1

.field public static final LOCATION_API:Ljava/lang/String; = "LOCATION"

.field public static final LOCATION_POLICY_BLOCKED_PROVIDERS:Ljava/lang/String; = "blockedProviders"

.field public static final LOCATION_POLICY_FORCE_PROVIDERS:Ljava/lang/String; = "forceProviders"

.field public static final LOCATION_POLICY_FORCE_PROVIDERS_DEFAULT:Z = false

.field public static final LOG_SEPARATOR:Ljava/lang/String; = ";"

.field public static final MISC_API:Ljava/lang/String; = "MISC"

.field public static final MISC_CALLING_LOG_ENABLED:Ljava/lang/String; = "CallingLogEnabled"

.field public static final MISC_CALLING_LOG_ENABLED_DEFAULT:Z = false

.field public static final MISC_DATA_STATISTIC_TIMER:Ljava/lang/String; = "miscDataStatisticTimer"

.field public static final MISC_DATA_STATISTIC_TIMER_DEFAULT:I = 0x3

.field public static final MISC_ENABLE_WIFI_DATA_STATISTIC:Ljava/lang/String; = "enableWifiDataStatistic"

.field public static final MISC_ENABLE_WIFI_DATA_STATISTIC_DEFAULT:Z = false

.field public static final MISC_SMS_LOG_ENABLED:Ljava/lang/String; = "smsLogEnabled"

.field public static final MISC_SMS_LOG_ENABLED_DEFAULT:Z = false

.field public static final PASSWORD_API:Ljava/lang/String; = "PASSWORD"

.field public static final PASSWORD_CHANGE_REQUESTED:Ljava/lang/String; = "passwordChangeRequested"

.field public static final PASSWORD_CHANGE_REQUESTED_DEFAULT:I = 0x0

.field public static final PASSWORD_CHANGE_TIMEOUT:Ljava/lang/String; = "passwordChangeTimeout"

.field public static final PASSWORD_CHANGE_TIMEOUT_DEFAULT:I = -0x1

.field public static final PASSWORD_COMPLEX_CHARS:Ljava/lang/String; = "passwordComplexChars"

.field public static final PASSWORD_EXPIRES:Ljava/lang/String; = "passwordExpires"

.field public static final PASSWORD_FORBIDDEN_STRINGS:Ljava/lang/String; = "passwordForbiddenStrings"

.field public static final PASSWORD_HAS_SYMBOL:Ljava/lang/String; = "passwordHasSymbol"

.field public static final PASSWORD_MAX_ATTEMPT_DEVICE_DISABLE:Ljava/lang/String; = "passwordAttemptDeviceDisable"

.field public static final PASSWORD_MAX_CHARACTER_OCCURENCES:Ljava/lang/String; = "passwordMaximumCharacterOccurences"

.field public static final PASSWORD_MAX_NUMERIC_SEQUENCE_LENGTH:Ljava/lang/String; = "passwordMaximumNumericSequenceLength"

.field public static final PASSWORD_OWNER_HISTORY:Ljava/lang/String; = "passwordOwnerHistory"

.field public static final PASSWORD_PATTERN_OWNER:Ljava/lang/String; = "passwordPatternOwner"

.field public static final PASSWORD_REQUIRED_PATTERN:Ljava/lang/String; = "passwordRequiredPattern"

.field public static final PASSWORD_SCREENLOCKPATTERN_VISIBILITY:Ljava/lang/String; = "screenLockPatternVisibility"

.field public static final PASSWORD_SCREENLOCKPATTERN_VISIBILITY_DEFAULT:Z = true

.field public static final PASSWORD_UNLOCK_DELAY:Ljava/lang/String; = "unlockDelay"

.field public static final PHONE_RESTRICTION_ALLOW_INCOMING_MMS:Ljava/lang/String; = "allowIncomingMms"

.field public static final PHONE_RESTRICTION_ALLOW_INCOMING_MMS_DEFAULT:Z = true

.field public static final PHONE_RESTRICTION_ALLOW_INCOMING_SMS:Ljava/lang/String; = "allowIncomingSms"

.field public static final PHONE_RESTRICTION_ALLOW_INCOMING_SMS_DEFAULT:Z = true

.field public static final PHONE_RESTRICTION_ALLOW_OUTGOING_MMS:Ljava/lang/String; = "allowOutgoingMms"

.field public static final PHONE_RESTRICTION_ALLOW_OUTGOING_MMS_DEFAULT:Z = true

.field public static final PHONE_RESTRICTION_ALLOW_OUTGOING_SMS:Ljava/lang/String; = "allowOutgoingSms"

.field public static final PHONE_RESTRICTION_ALLOW_OUTGOING_SMS_DEFAULT:Z = true

.field public static final PHONE_RESTRICTION_API:Ljava/lang/String; = "PHONERESTRICTION"

.field public static final PHONE_RESTRICTION_DATA_CALL_BYTES_BY_DAY:Ljava/lang/String; = "dataCallBytesCountByDay"

.field public static final PHONE_RESTRICTION_DATA_CALL_BYTES_BY_DAY_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_DATA_CALL_BYTES_BY_MONTH:Ljava/lang/String; = "dataCallByteCountByMonth"

.field public static final PHONE_RESTRICTION_DATA_CALL_BYTES_BY_MONTH_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_DATA_CALL_BYTES_BY_WEEK:Ljava/lang/String; = "dataCallBytesCountByWeek"

.field public static final PHONE_RESTRICTION_DATA_CALL_BYTES_BY_WEEK_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_DATA_CALL_BY_DAY:Ljava/lang/String; = "dataCallByDay"

.field public static final PHONE_RESTRICTION_DATA_CALL_BY_DAY_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_DATA_CALL_BY_MONTH:Ljava/lang/String; = "dataCallByMonth"

.field public static final PHONE_RESTRICTION_DATA_CALL_BY_MONTH_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_DATA_CALL_BY_WEEK:Ljava/lang/String; = "dataCallByWeek"

.field public static final PHONE_RESTRICTION_DATA_CALL_BY_WEEK_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_DATA_CALL_DATE_DAY:Ljava/lang/String; = "dataCallDateDay"

.field public static final PHONE_RESTRICTION_DATA_CALL_DATE_MONTH:Ljava/lang/String; = "dataCallDateMonth"

.field public static final PHONE_RESTRICTION_DATA_CALL_DATE_WEEK:Ljava/lang/String; = "dataCallDateWeek"

.field public static final PHONE_RESTRICTION_DATA_CALL_PACKET_DATA_CHECKBOX:Ljava/lang/String; = "dataCallPacketDataCheckBox"

.field public static final PHONE_RESTRICTION_DATE_DAY:Ljava/lang/String; = "dateDay"

.field public static final PHONE_RESTRICTION_DATE_MONTH:Ljava/lang/String; = "dateMonth"

.field public static final PHONE_RESTRICTION_DATE_WEEK:Ljava/lang/String; = "dateWeek"

.field public static final PHONE_RESTRICTION_EMERGENCY_CALL_ONLY:Ljava/lang/String; = "emergencyCallOnly"

.field public static final PHONE_RESTRICTION_ENABLE_DATA_CALL_DATA_STATISTIC:Ljava/lang/String; = "enableWifiDataCallDataStatistic"

.field public static final PHONE_RESTRICTION_ENABLE_DATA_CALL_DATA_STATISTIC_DEFAULT:Z = false

.field public static final PHONE_RESTRICTION_ENABLE_DATA_CALL_LIMIT:Ljava/lang/String; = "enableLimitDataCall"

.field public static final PHONE_RESTRICTION_ENABLE_DATA_CALL_LIMIT_DEFAULT:Z = false

.field public static final PHONE_RESTRICTION_ENABLE_DATA_CALL_LOGGING:Ljava/lang/String; = "enableDataCallLogging"

.field public static final PHONE_RESTRICTION_ENABLE_DATA_CALL_LOGGING_DEFAULT:Z = false

.field public static final PHONE_RESTRICTION_INCOMING_CALL_BY_DAY:Ljava/lang/String; = "incomingCallByDay"

.field public static final PHONE_RESTRICTION_INCOMING_CALL_BY_DAY_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_INCOMING_CALL_BY_MONTH:Ljava/lang/String; = "incomingCallByMonth"

.field public static final PHONE_RESTRICTION_INCOMING_CALL_BY_MONTH_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_INCOMING_CALL_BY_WEEK:Ljava/lang/String; = "incomingCallByWeek"

.field public static final PHONE_RESTRICTION_INCOMING_CALL_BY_WEEK_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_INCOMING_CALL_COUNT_DAY:Ljava/lang/String; = "incomingCallCountDay"

.field public static final PHONE_RESTRICTION_INCOMING_CALL_COUNT_DAY_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_INCOMING_CALL_COUNT_MONTH:Ljava/lang/String; = "incomingCallCountMonth"

.field public static final PHONE_RESTRICTION_INCOMING_CALL_COUNT_MONTH_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_INCOMING_CALL_COUNT_WEEK:Ljava/lang/String; = "incomingCallCountWeek"

.field public static final PHONE_RESTRICTION_INCOMING_CALL_COUNT_WEEK_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_INCOMING_PATTERN:Ljava/lang/String; = "incomingPattern"

.field public static final PHONE_RESTRICTION_LIMIT_CALL_ENABLE:Ljava/lang/String; = "limitCallEnable"

.field public static final PHONE_RESTRICTION_LIMIT_CALL_ENABLE_DEFAULT:Z = false

.field public static final PHONE_RESTRICTION_OUTGOING_CALL_BY_DAY:Ljava/lang/String; = "outgoingCallByDay"

.field public static final PHONE_RESTRICTION_OUTGOING_CALL_BY_DAY_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_OUTGOING_CALL_BY_MONTH:Ljava/lang/String; = "outgoingCallByMonth"

.field public static final PHONE_RESTRICTION_OUTGOING_CALL_BY_MONTH_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_OUTGOING_CALL_BY_WEEK:Ljava/lang/String; = "outgoingCallByWeek"

.field public static final PHONE_RESTRICTION_OUTGOING_CALL_BY_WEEK_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_OUTGOING_CALL_COUNT_DAY:Ljava/lang/String; = "outgoingCallCountDay"

.field public static final PHONE_RESTRICTION_OUTGOING_CALL_COUNT_DAY_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_OUTGOING_CALL_COUNT_MONTH:Ljava/lang/String; = "outgoingCallCountMonth"

.field public static final PHONE_RESTRICTION_OUTGOING_CALL_COUNT_MONTH_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_OUTGOING_CALL_COUNT_WEEK:Ljava/lang/String; = "outgoingCallCountWeek"

.field public static final PHONE_RESTRICTION_OUTGOING_CALL_COUNT_WEEK_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_OUTGOING_PATTERN:Ljava/lang/String; = "outgoingPattern"

.field public static final PHONE_RESTRICTION_SMS_DATE_DAY:Ljava/lang/String; = "smsDateDay"

.field public static final PHONE_RESTRICTION_SMS_DATE_MONTH:Ljava/lang/String; = "smsDateMonth"

.field public static final PHONE_RESTRICTION_SMS_DATE_WEEK:Ljava/lang/String; = "smsDateWeek"

.field public static final PHONE_RESTRICTION_SMS_INCOMING_BY_DAY:Ljava/lang/String; = "incomingSmsByDay"

.field public static final PHONE_RESTRICTION_SMS_INCOMING_BY_DAY_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_SMS_INCOMING_BY_MONTH:Ljava/lang/String; = "incomingSmsByMonth"

.field public static final PHONE_RESTRICTION_SMS_INCOMING_BY_MONTH_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_SMS_INCOMING_BY_WEEK:Ljava/lang/String; = "incomingSmsByWeek"

.field public static final PHONE_RESTRICTION_SMS_INCOMING_BY_WEEK_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_SMS_INCOMING_COUNT_DAY:Ljava/lang/String; = "incomingSmsCountDay"

.field public static final PHONE_RESTRICTION_SMS_INCOMING_COUNT_DAY_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_SMS_INCOMING_COUNT_MONTH:Ljava/lang/String; = "incomingSmsCountMonth"

.field public static final PHONE_RESTRICTION_SMS_INCOMING_COUNT_MONTH_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_SMS_INCOMING_COUNT_WEEK:Ljava/lang/String; = "incomingSmsCountWeek"

.field public static final PHONE_RESTRICTION_SMS_INCOMING_COUNT_WEEK_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_SMS_INCOMING_PATTERN:Ljava/lang/String; = "smsRestrictionIncomingPattern"

.field public static final PHONE_RESTRICTION_SMS_LIMIT_ENABLE:Ljava/lang/String; = "limitSmsEnable"

.field public static final PHONE_RESTRICTION_SMS_LIMIT_ENABLE_DEFAULT:Z = false

.field public static final PHONE_RESTRICTION_SMS_OUTGOING_BY_DAY:Ljava/lang/String; = "outgoingSmsByDay"

.field public static final PHONE_RESTRICTION_SMS_OUTGOING_BY_DAY_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_SMS_OUTGOING_BY_MONTH:Ljava/lang/String; = "outgoingSmsByMonth"

.field public static final PHONE_RESTRICTION_SMS_OUTGOING_BY_MONTH_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_SMS_OUTGOING_BY_WEEK:Ljava/lang/String; = "outgoingSmsByWeek"

.field public static final PHONE_RESTRICTION_SMS_OUTGOING_BY_WEEK_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_SMS_OUTGOING_COUNT_DAY:Ljava/lang/String; = "outgoingSmsCountDay"

.field public static final PHONE_RESTRICTION_SMS_OUTGOING_COUNT_DAY_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_SMS_OUTGOING_COUNT_MONTH:Ljava/lang/String; = "outgoingSmsCountMonth"

.field public static final PHONE_RESTRICTION_SMS_OUTGOING_COUNT_MONTH_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_SMS_OUTGOING_COUNT_WEEK:Ljava/lang/String; = "outgoingSmsCountWeek"

.field public static final PHONE_RESTRICTION_SMS_OUTGOING_COUNT_WEEK_DEFAULT:I = 0x0

.field public static final PHONE_RESTRICTION_SMS_OUTGOING_PATTERN:Ljava/lang/String; = "smsRestrictionOutgoingPattern"

.field public static final RESTRICTION_ALLOW_NON_MARKET_APP:Ljava/lang/String; = "allowNonMarketApp"

.field public static final RESTRICTION_ALLOW_NON_MARKET_APP_DEFAULT:Z = true

.field public static final RESTRICTION_ALLOW_SETTINGS_CHANGES:Ljava/lang/String; = "allowSettingsChanges"

.field public static final RESTRICTION_ALLOW_SETTINGS_CHANGES_DEFAULT:Z = true

.field public static final RESTRICTION_API:Ljava/lang/String; = "RESTRICTION"

.field public static final RESTRICTION_BACKGROUND_DATA_ENABLED:Ljava/lang/String; = "backgroundDataEnabled"

.field public static final RESTRICTION_BACKGROUND_DATA_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_BACKUP_ENABLED:Ljava/lang/String; = "backupEnabled"

.field public static final RESTRICTION_BACKUP_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_BLUETOOTH_TETHERING_ENABLED:Ljava/lang/String; = "bluetoothTetheringEnabled"

.field public static final RESTRICTION_BLUETOOTH_TETHERING_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_CAMERA_ENABLED:Ljava/lang/String; = "cameraEnabled"

.field public static final RESTRICTION_CAMERA_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_CELLULAR_DATA_ENABLED:Ljava/lang/String; = "cellularDataEnabled"

.field public static final RESTRICTION_CELLULAR_DATA_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_CLIPBOARD_ENABLED:Ljava/lang/String; = "clipboardEnabled"

.field public static final RESTRICTION_CLIPBOARD_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_DATETIMECHANGE_ENABLED:Ljava/lang/String; = "DateTimeEnabled"

.field public static final RESTRICTION_DATETIMECHANGE_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_FACTORY_RESET_ALLOWED:Ljava/lang/String; = "factoryresetallowed"

.field public static final RESTRICTION_FACTORY_RESET_ALLOWED_DEFAULT:Z = true

.field public static final RESTRICTION_GOOGLE_CRASH_REPORT_ENABLED:Ljava/lang/String; = "googleCrashReportEnabled"

.field public static final RESTRICTION_GOOGLE_CRASH_REPORT_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_HOME_KEY_ENABLED:Ljava/lang/String; = "homeKeyEnabled"

.field public static final RESTRICTION_HOME_KEY_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_MASS_STORAGE_ENABLED:Ljava/lang/String; = "massStorageEnabled"

.field public static final RESTRICTION_MASS_STORAGE_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_MICROPHONE_ENABLED:Ljava/lang/String; = "microphoneEnabled"

.field public static final RESTRICTION_MICROPHONE_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_MOCK_LOCATION_ENABLED:Ljava/lang/String; = "mockLocationEnabled"

.field public static final RESTRICTION_MOCK_LOCATION_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_NATIVE_VPN_ALLOWED:Ljava/lang/String; = "nativeVpnAllowed"

.field public static final RESTRICTION_NATIVE_VPN_ALLOWED_DEFAULT:Z = true

.field public static final RESTRICTION_NFC_ENABLED:Ljava/lang/String; = "nfcEnabled"

.field public static final RESTRICTION_NFC_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_OTAUPGRADE_ENABLED:Ljava/lang/String; = "OTAUpgradeEnabled"

.field public static final RESTRICTION_OTAUPGRADE_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_POWER_OFF_ALLOWED:Ljava/lang/String; = "powerOffAllowed"

.field public static final RESTRICTION_POWER_OFF_ALLOWED_DEFAULT:Z = true

.field public static final RESTRICTION_SCREEN_CAPTURE_ENABLED:Ljava/lang/String; = "screenCaptureEnabled"

.field public static final RESTRICTION_SCREEN_CAPTURE_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_SDCARDWRITE_ENABLED:Ljava/lang/String; = "sdCardWriteEnabled"

.field public static final RESTRICTION_SDCARDWRITE_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_SDCARD_ENABLED:Ljava/lang/String; = "sdCardEnabled"

.field public static final RESTRICTION_SDCARD_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_STATUS_BAR_EXPANSION_ENABLED:Ljava/lang/String; = "statusBarExpansionEnabled"

.field public static final RESTRICTION_STATUS_BAR_EXPANSION_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_USB_DEBUGGING_ENABLED:Ljava/lang/String; = "usbDebuggingEnabled"

.field public static final RESTRICTION_USB_DEBUGGING_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_USB_KIES_ENABLED:Ljava/lang/String; = "usbKiesEnabled"

.field public static final RESTRICTION_USB_KIES_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_USB_MEDIAPLAYER_ENABLED:Ljava/lang/String; = "usbMediaPlayerEnabled"

.field public static final RESTRICTION_USB_MEDIAPLAYER_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_USB_TETHERING_ENABLED:Ljava/lang/String; = "usbTetheringEnabled"

.field public static final RESTRICTION_USB_TETHERING_ENABLED_DEFAULT:Z = true

.field public static final RESTRICTION_WALLPAPER_CHANGE_ALLOWED:Ljava/lang/String; = "wallpaperEnabled"

.field public static final RESTRICTION_WALLPAPER_CHANGE_ALLOWED_DEFAULT:Z = true

.field public static final RESTRICTION_WIFI_TETHERING_ENABLED:Ljava/lang/String; = "wifiTetheringEnabled"

.field public static final RESTRICTION_WIFI_TETHERING_ENABLED_DEFAULT:Z = true

.field public static final ROAMING_API:Ljava/lang/String; = "ROAMING"

.field public static final ROAMING_DATA_ENABLED:Ljava/lang/String; = "roamingDataEnabled"

.field public static final ROAMING_DATA_ENABLED_DEFAULT:Z = true

.field public static final ROAMING_PUSH_ENABLED:Ljava/lang/String; = "roamingPushEnabled"

.field public static final ROAMING_PUSH_ENABLED_DEFAULT:Z = true

.field public static final ROAMING_SYNC_ENABLED:Ljava/lang/String; = "roamingSyncEnabled"

.field public static final ROAMING_SYNC_ENABLED_DEFAULT:Z = true

.field public static final ROAMING_VOICE_CALLS_ENABLED:Ljava/lang/String; = "roamingVoiceCallsEnabled"

.field public static final ROAMING_VOICE_CALLS_ENABLED_DEFAULT:Z = true

.field public static final SECURITY_API:Ljava/lang/String; = "SECUR"

.field public static final SMS_ADDRESS:Ljava/lang/String; = "smsAddress"

.field public static final SMS_API:Ljava/lang/String; = "SMS"

.field public static final SMS_BODY:Ljava/lang/String; = "smsBody"

.field public static final SMS_TIME_STAMP:Ljava/lang/String; = "smsTimeStamp"

.field public static final SMS_TYPE:Ljava/lang/String; = "smsType"

.field public static final SYSPROP_PREFIX:Ljava/lang/String; = "sys.edm."

.field public static final SYSPROP_TLS_SEC_LEVEL:Ljava/lang/String; = "tls-sec-level"

.field public static final VPN_API:Ljava/lang/String; = "VPN"

.field public static final VPN_POLICY_ID:Ljava/lang/String; = "VpnID"

.field public static final VPN_POLICY_USERNAME:Ljava/lang/String; = "UsrName"

.field public static final VPN_POLICY_USER_PWD:Ljava/lang/String; = "UsrPwd"

.field public static final WEBFILTER_FILTERING:Ljava/lang/String; = "filtering"

.field public static final WEBFILTER_LOGGING:Ljava/lang/String; = "logging"

.field public static final WEBFILTER_LOG_PKEY:Ljava/lang/String; = "id"

.field public static final WEBFILTER_LOG_TABLE:Ljava/lang/String; = "WebFilterLogTable"

.field public static final WEBFILTER_PKEY:Ljava/lang/String; = "id"

.field public static final WEBFILTER_SETTINGS_PKEY:Ljava/lang/String; = "id"

.field public static final WEBFILTER_SETTINGS_TABLE:Ljava/lang/String; = "WebFilterSettingsTable"

.field public static final WEBFILTER_TABLE:Ljava/lang/String; = "WebFilterTable"

.field public static final WEBFILTER_TIMESTAMP:Ljava/lang/String; = "time"

.field public static final WEBFILTER_URL:Ljava/lang/String; = "url"

.field public static final WIFI_ALLOW:Ljava/lang/String; = "allowWifi"

.field public static final WIFI_ALLOW_DEFAULT:Z = true

.field public static final WIFI_ALLOW_USER_CHANGES:Ljava/lang/String; = "allowUserChanges"

.field public static final WIFI_ALLOW_USER_CHANGES_DEFAULT:Z = true

.field public static final WIFI_ALLOW_USER_PROFILES:Ljava/lang/String; = "allowUserProfiles"

.field public static final WIFI_ALLOW_USER_PROFILES_DEFAULT:Z = true

.field public static final WIFI_ALLOW_WIFIAP_SETTING_MODIFICATION:Ljava/lang/String; = "allowWifiApSettingModification"

.field public static final WIFI_ALLOW_WIFIAP_SETTING_MODIFICATION_DEFAULT:Z = true

.field public static final WIFI_API:Ljava/lang/String; = "WIFI"

.field public static final WIFI_BLOCKED_SSID:Ljava/lang/String; = "blockedSSIDList"

.field public static final WIFI_CONF_ANONYMOUS_IDENTITY:Ljava/lang/String; = "networkAnonymousId"

.field public static final WIFI_CONF_API:Ljava/lang/String; = "WIFI_CONF"

.field public static final WIFI_CONF_AUTH_ALG:Ljava/lang/String; = "networkAuthAlg"

.field public static final WIFI_CONF_BSSID:Ljava/lang/String; = "networkBSSID"

.field public static final WIFI_CONF_CA_CERT:Ljava/lang/String; = "networkCaCertificate"

.field public static final WIFI_CONF_CLIENT_CERT:Ljava/lang/String; = "networkClientCertification"

.field public static final WIFI_CONF_EAP:Ljava/lang/String; = "networkEAP"

.field public static final WIFI_CONF_GROUP_CIPHERS:Ljava/lang/String; = "networkAllowedGroupProtocols"

.field public static final WIFI_CONF_IDENTITY:Ljava/lang/String; = "networkIdentity"

.field public static final WIFI_CONF_KEY_MGMT:Ljava/lang/String; = "networkKeyMgmt"

.field public static final WIFI_CONF_PAC_FILE:Ljava/lang/String; = "networkPacFile"

.field public static final WIFI_CONF_PAIRWISE_CIPHERS:Ljava/lang/String; = "networkAllowedPairwiseCiphers"

.field public static final WIFI_CONF_PASSWORD:Ljava/lang/String; = "networkPassword"

.field public static final WIFI_CONF_PHASE1:Ljava/lang/String; = "networkPhase1"

.field public static final WIFI_CONF_PHASE2:Ljava/lang/String; = "networkPhase2"

.field public static final WIFI_CONF_PRIVATE_KEY:Ljava/lang/String; = "networkPrivateKey"

.field public static final WIFI_CONF_PROTOCOLS:Ljava/lang/String; = "networkAllowedProtos"

.field public static final WIFI_CONF_PSK:Ljava/lang/String; = "networkPSK"

.field public static final WIFI_CONF_SSID:Ljava/lang/String; = "networkSSID"

.field public static final WIFI_CONF_STATIC_GATEWAY:Ljava/lang/String; = "networkStaticGateway"

.field public static final WIFI_CONF_STATIC_IP:Ljava/lang/String; = "networkStaticIp"

.field public static final WIFI_CONF_STATIC_IP_ENABLED:Ljava/lang/String; = "networkStaticIpEnabled"

.field public static final WIFI_CONF_STATIC_IP_ENABLED_DEFAULT:Z = false

.field public static final WIFI_CONF_STATIC_PRIMARY_DNS:Ljava/lang/String; = "networkStaticPrimaryDns"

.field public static final WIFI_CONF_STATIC_SECONDARY_DNS:Ljava/lang/String; = "networkStaticSecondaryDns"

.field public static final WIFI_CONF_STATIC_SUBNET_MASK:Ljava/lang/String; = "networkStaticSubnetMask"

.field public static final WIFI_CONF_WEP_KEY1:Ljava/lang/String; = "networkWEPKey1"

.field public static final WIFI_CONF_WEP_KEY2:Ljava/lang/String; = "networkWEPKey2"

.field public static final WIFI_CONF_WEP_KEY3:Ljava/lang/String; = "networkWEPKey3"

.field public static final WIFI_CONF_WEP_KEY4:Ljava/lang/String; = "networkWEPKey4"

.field public static final WIFI_CONF_WEP_KEY_ID:Ljava/lang/String; = "networkWEPKeyId"

.field public static final WIFI_CONF_WEP_KEY_ID_DEFAULT:I = 0x0

.field public static final WIFI_DEFAULT_GATEWAY:Ljava/lang/String; = "defaultGateway"

.field public static final WIFI_DEFAULT_IP:Ljava/lang/String; = "defaultIP"

.field public static final WIFI_DEFAULT_PRIMARY_DNS:Ljava/lang/String; = "defaultPrimaryDNS"

.field public static final WIFI_DEFAULT_SECONDARY_DNS:Ljava/lang/String; = "defaultSecondaryDNS"

.field public static final WIFI_DEFAULT_SUBNET_MASK:Ljava/lang/String; = "defaultSubnetMask"

.field public static final WIFI_DHCP_ENABLED:Ljava/lang/String; = "DHCPEnabled"

.field public static final WIFI_LIST_TYPE:Ljava/lang/String; = "WIFI_LIST_TYPE"

.field public static final WIFI_MINIMUM_REQUIRED_SECURITY:Ljava/lang/String; = "minimumRequiredSecurity"

.field public static final WIFI_MINIMUM_REQUIRED_SECURITY_DEFAULT:I = 0x0

.field public static final WIFI_PASSWORD_HIDDEN:Ljava/lang/String; = "passwordHidden"

.field public static final WIFI_PASSWORD_HIDDEN_DEFAULT:Z = false

.field public static final WIFI_PROMPT_CREDENTIALS:Ljava/lang/String; = "promptCredentials"

.field public static final WIFI_PROMPT_CREDENTIALS_DEFAULT:Z = true

.field public static final WIFI_SECURITY_LEVEL:Ljava/lang/String; = "linkSecurity"

.field public static final WIFI_SSID:Ljava/lang/String; = "WIFI_SSID"

.field public static final WIFI_SSID_BLACK_WHITE_LIST_API:Ljava/lang/String; = "WIFI_SSID_BLACK_WHITE_LIST"

.field public static final WIFI_SSID_RESTRICTION:Ljava/lang/String; = "wifiSsidRestriction"

.field public static final WIFI_SSID_RESTRICTION_DEFAULT:Z = false

.field public static final WIFI_TLS_CERTIFICATE_SECURITY_LEVEL:Ljava/lang/String; = "tlsCertificateSecurityLevel"

.field public static final WIFI_TLS_CERTIFICATE_SECURITY_LEVEL_DEFAULT:I = 0x0

.field public static final WIFI_UUID_MATCH_LIST:Ljava/lang/String; = "networkUuidMatchList"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
