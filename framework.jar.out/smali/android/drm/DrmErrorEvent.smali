.class public Landroid/drm/DrmErrorEvent;
.super Landroid/drm/DrmEvent;
.source "DrmErrorEvent.java"


# static fields
.field public static final TYPE_ACQUIRE_DRM_INFO_FAILED:I = 0x7d8

.field public static final TYPE_DRM_E_BUFFERTOOSMALL:I = 0x12

.field public static final TYPE_DRM_E_CLK_INVALID_DATE:I = 0x17

.field public static final TYPE_DRM_E_DEVCERTEXCEEDSIZELIMIT:I = 0x18

.field public static final TYPE_DRM_E_DEVCERTREADERROR:I = 0x13

.field public static final TYPE_DRM_E_DEVCERT_REVOKED:I = 0x6

.field public static final TYPE_DRM_E_DOMAIN_INVALID_CUSTOM_DATA:I = 0x19

.field public static final TYPE_DRM_E_DOMAIN_INVALID_CUSTOM_DATA_TYPE:I = 0x1a

.field public static final TYPE_DRM_E_DOMAIN_NOT_FOUND:I = 0x5

.field public static final TYPE_DRM_E_DOMAIN_STORE_DELETE_DATA:I = 0x1e

.field public static final TYPE_DRM_E_DRMNOTINIT:I = 0x20

.field public static final TYPE_DRM_E_INVALIDARG:I = 0x10

.field public static final TYPE_DRM_E_INVALIDDEVICECERTIFICATE:I = 0x15

.field public static final TYPE_DRM_E_INVALIDDEVICECERTIFICATETEMPLATE:I = 0x14

.field public static final TYPE_DRM_E_INVALIDLICENSESTORE:I = 0x16

.field public static final TYPE_DRM_E_INVALID_METERCERT_SIGNATURE:I = 0x21

.field public static final TYPE_DRM_E_INVALID_METERRESPONSE_SIGNATURE:I = 0x24

.field public static final TYPE_DRM_E_LICENSEEXPIRED:I = 0x4

.field public static final TYPE_DRM_E_LICENSENOTFOUND:I = 0x3

.field public static final TYPE_DRM_E_METERING_INVALID_COMMAND:I = 0x23

.field public static final TYPE_DRM_E_METERING_NOT_SUPPORTED:I = 0x11

.field public static final TYPE_DRM_E_METERSTORE_DATA_NOT_FOUND:I = 0x22

.field public static final TYPE_DRM_E_NOMORE:I = 0x1f

.field public static final TYPE_DRM_E_SERVER_DEVICE_LIMIT_REACHED:I = 0xd

.field public static final TYPE_DRM_E_SERVER_DOMAIN_REQUIRED:I = 0xa

.field public static final TYPE_DRM_E_SERVER_INTERNAL_ERROR:I = 0x8

.field public static final TYPE_DRM_E_SERVER_INVALID_MESSAGE:I = 0x7

.field public static final TYPE_DRM_E_SERVER_NOT_A_MEMBER:I = 0xb

.field public static final TYPE_DRM_E_SERVER_PROTOCOL_REDIRECT:I = 0xf

.field public static final TYPE_DRM_E_SERVER_PROTOCOL_VERSION_MISMATCH:I = 0xe

.field public static final TYPE_DRM_E_SERVER_SERVICE_SPECIFIC:I = 0x9

.field public static final TYPE_DRM_E_SERVER_UNKNOWN_ACCOUNTID:I = 0xc

.field public static final TYPE_DRM_E_SOAPXML_XML_FORMAT:I = 0x1c

.field public static final TYPE_DRM_E_XMLNOTFOUND:I = 0x1d

.field public static final TYPE_DRM_S_MORE_DATA:I = 0x1b

.field public static final TYPE_GENERAL:I = 0x2

.field public static final TYPE_NOT_SUPPORTED:I = 0x7d3

.field public static final TYPE_NO_INTERNET_CONNECTION:I = 0x7d5

.field public static final TYPE_OUT_OF_MEMORY:I = 0x7d4

.field public static final TYPE_PROCESS_DRM_INFO_FAILED:I = 0x7d6

.field public static final TYPE_REMOVE_ALL_RIGHTS_FAILED:I = 0x7d7

.field public static final TYPE_RIGHTS_NOT_INSTALLED:I = 0x7d1

.field public static final TYPE_RIGHTS_RENEWAL_NOT_ALLOWED:I = 0x7d2


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .parameter "uniqueId"
    .parameter "type"
    .parameter "message"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    .line 110
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .parameter "uniqueId"
    .parameter "type"
    .parameter "message"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p4, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 124
    return-void
.end method
