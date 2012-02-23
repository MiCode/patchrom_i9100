.class public Landroid/drm/DrmInfoStatus;
.super Ljava/lang/Object;
.source "DrmInfoStatus.java"


# static fields
.field public static final STATUS_ERROR:I = 0x2

.field public static final STATUS_ERROR_DRM_E_BUFFERTOOSMALL:I = 0x12

.field public static final STATUS_ERROR_DRM_E_CLK_INVALID_DATE:I = 0x17

.field public static final STATUS_ERROR_DRM_E_DEVCERTEXCEEDSIZELIMIT:I = 0x18

.field public static final STATUS_ERROR_DRM_E_DEVCERTREADERROR:I = 0x13

.field public static final STATUS_ERROR_DRM_E_DEVCERT_REVOKED:I = 0x6

.field public static final STATUS_ERROR_DRM_E_DOMAIN_INVALID_CUSTOM_DATA:I = 0x19

.field public static final STATUS_ERROR_DRM_E_DOMAIN_INVALID_CUSTOM_DATA_TYPE:I = 0x1a

.field public static final STATUS_ERROR_DRM_E_DOMAIN_NOT_FOUND:I = 0x5

.field public static final STATUS_ERROR_DRM_E_DOMAIN_STORE_DELETE_DATA:I = 0x1e

.field public static final STATUS_ERROR_DRM_E_DOMAIN_STORE_GET_DATA:I = 0x26

.field public static final STATUS_ERROR_DRM_E_DRMNOTINIT:I = 0x20

.field public static final STATUS_ERROR_DRM_E_INVALIDARG:I = 0x10

.field public static final STATUS_ERROR_DRM_E_INVALIDDEVICECERTIFICATE:I = 0x15

.field public static final STATUS_ERROR_DRM_E_INVALIDDEVICECERTIFICATETEMPLATE:I = 0x14

.field public static final STATUS_ERROR_DRM_E_INVALIDLICENSESTORE:I = 0x16

.field public static final STATUS_ERROR_DRM_E_INVALID_METERCERT_SIGNATURE:I = 0x21

.field public static final STATUS_ERROR_DRM_E_INVALID_METERRESPONSE_SIGNATURE:I = 0x24

.field public static final STATUS_ERROR_DRM_E_LICENSEEXPIRED:I = 0x4

.field public static final STATUS_ERROR_DRM_E_LICENSENOTFOUND:I = 0x3

.field public static final STATUS_ERROR_DRM_E_METERING_INVALID_COMMAND:I = 0x23

.field public static final STATUS_ERROR_DRM_E_METERING_NOT_SUPPORTED:I = 0x11

.field public static final STATUS_ERROR_DRM_E_METERSTORE_DATA_NOT_FOUND:I = 0x22

.field public static final STATUS_ERROR_DRM_E_NOMORE:I = 0x1f

.field public static final STATUS_ERROR_DRM_E_OUTOFMEMORY:I = 0x25

.field public static final STATUS_ERROR_DRM_E_SERVER_DEVICE_LIMIT_REACHED:I = 0xd

.field public static final STATUS_ERROR_DRM_E_SERVER_DOMAIN_REQUIRED:I = 0xa

.field public static final STATUS_ERROR_DRM_E_SERVER_INTERNAL_ERROR:I = 0x8

.field public static final STATUS_ERROR_DRM_E_SERVER_INVALID_MESSAGE:I = 0x7

.field public static final STATUS_ERROR_DRM_E_SERVER_NOT_A_MEMBER:I = 0xb

.field public static final STATUS_ERROR_DRM_E_SERVER_PROTOCOL_REDIRECT:I = 0xf

.field public static final STATUS_ERROR_DRM_E_SERVER_PROTOCOL_VERSION_MISMATCH:I = 0xe

.field public static final STATUS_ERROR_DRM_E_SERVER_SERVICE_SPECIFIC:I = 0x9

.field public static final STATUS_ERROR_DRM_E_SERVER_UNKNOWN_ACCOUNTID:I = 0xc

.field public static final STATUS_ERROR_DRM_E_SOAPXML_XML_FORMAT:I = 0x1c

.field public static final STATUS_ERROR_DRM_E_XMLNOTFOUND:I = 0x1d

.field public static final STATUS_ERROR_DRM_S_MORE_DATA:I = 0x1b

.field public static final STATUS_OK:I = 0x1


# instance fields
.field public final data:Landroid/drm/ProcessedData;

.field public final infoType:I

.field public final mimeType:Ljava/lang/String;

.field public final statusCode:I


# direct methods
.method public constructor <init>(IILandroid/drm/ProcessedData;Ljava/lang/String;)V
    .locals 0
    .parameter "_statusCode"
    .parameter "_infoType"
    .parameter "_data"
    .parameter "_mimeType"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Landroid/drm/DrmInfoStatus;->statusCode:I

    .line 97
    iput p2, p0, Landroid/drm/DrmInfoStatus;->infoType:I

    .line 98
    iput-object p3, p0, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    .line 99
    iput-object p4, p0, Landroid/drm/DrmInfoStatus;->mimeType:Ljava/lang/String;

    .line 100
    return-void
.end method
