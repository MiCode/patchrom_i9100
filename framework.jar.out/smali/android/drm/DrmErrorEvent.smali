.class public Landroid/drm/DrmErrorEvent;
.super Landroid/drm/DrmEvent;
.source "DrmErrorEvent.java"


# static fields
.field public static final TYPE_ACQUIRE_DRM_INFO_FAILED:I = 0x7d8

.field public static final TYPE_DRM_E_BUFFERTOOSMALL:I = 0xdbe

.field public static final TYPE_DRM_E_CLK_INVALID_DATE:I = 0xdc3

.field public static final TYPE_DRM_E_DEVCERTEXCEEDSIZELIMIT:I = 0xdc4

.field public static final TYPE_DRM_E_DEVCERTREADERROR:I = 0xdbf

.field public static final TYPE_DRM_E_DEVCERT_REVOKED:I = 0xdb2

.field public static final TYPE_DRM_E_DOMAIN_INVALID_CUSTOM_DATA:I = 0xdc5

.field public static final TYPE_DRM_E_DOMAIN_INVALID_CUSTOM_DATA_TYPE:I = 0xdc6

.field public static final TYPE_DRM_E_DOMAIN_NOT_FOUND:I = 0xdb1

.field public static final TYPE_DRM_E_DOMAIN_STORE_DELETE_DATA:I = 0xdca

.field public static final TYPE_DRM_E_DOMAIN_STORE_GET_DATA:I = 0xdd2

.field public static final TYPE_DRM_E_DRMNOTINIT:I = 0xdcc

.field public static final TYPE_DRM_E_INVALIDARG:I = 0xdbc

.field public static final TYPE_DRM_E_INVALIDDEVICECERTIFICATE:I = 0xdc1

.field public static final TYPE_DRM_E_INVALIDDEVICECERTIFICATETEMPLATE:I = 0xdc0

.field public static final TYPE_DRM_E_INVALIDLICENSESTORE:I = 0xdc2

.field public static final TYPE_DRM_E_INVALID_METERCERT_SIGNATURE:I = 0xdcd

.field public static final TYPE_DRM_E_INVALID_METERRESPONSE_SIGNATURE:I = 0xdd0

.field public static final TYPE_DRM_E_LICENSEEXPIRED:I = 0xdb0

.field public static final TYPE_DRM_E_LICENSENOTFOUND:I = 0xdaf

.field public static final TYPE_DRM_E_METERING_INVALID_COMMAND:I = 0xdcf

.field public static final TYPE_DRM_E_METERING_NOT_SUPPORTED:I = 0xdbd

.field public static final TYPE_DRM_E_METERSTORE_DATA_NOT_FOUND:I = 0xdce

.field public static final TYPE_DRM_E_NOMORE:I = 0xdcb

.field public static final TYPE_DRM_E_OUTOFMEMORY:I = 0xdd1

.field public static final TYPE_DRM_E_SERVER_DEVICE_LIMIT_REACHED:I = 0xdb9

.field public static final TYPE_DRM_E_SERVER_DOMAIN_REQUIRED:I = 0xdb6

.field public static final TYPE_DRM_E_SERVER_INTERNAL_ERROR:I = 0xdb4

.field public static final TYPE_DRM_E_SERVER_INVALID_MESSAGE:I = 0xdb3

.field public static final TYPE_DRM_E_SERVER_NOT_A_MEMBER:I = 0xdb7

.field public static final TYPE_DRM_E_SERVER_PROTOCOL_REDIRECT:I = 0xdbb

.field public static final TYPE_DRM_E_SERVER_PROTOCOL_VERSION_MISMATCH:I = 0xdba

.field public static final TYPE_DRM_E_SERVER_SERVICE_SPECIFIC:I = 0xdb5

.field public static final TYPE_DRM_E_SERVER_UNKNOWN_ACCOUNTID:I = 0xdb8

.field public static final TYPE_DRM_E_SOAPXML_XML_FORMAT:I = 0xdc8

.field public static final TYPE_DRM_E_XMLNOTFOUND:I = 0xdc9

.field public static final TYPE_DRM_S_MORE_DATA:I = 0xdc7

.field public static final TYPE_GENERAL:I = 0xdae

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
    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    .line 125
    invoke-direct {p0, p2}, Landroid/drm/DrmErrorEvent;->checkTypeValidity(I)V

    .line 126
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
    .line 139
    .local p4, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 140
    invoke-direct {p0, p2}, Landroid/drm/DrmErrorEvent;->checkTypeValidity(I)V

    .line 141
    return-void
.end method

.method private checkTypeValidity(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, isValid:Z
    sparse-switch p1, :sswitch_data_0

    .line 196
    :goto_0
    if-nez v0, :cond_0

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, msg:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    .end local v1           #msg:Ljava/lang/String;
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-void

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0xdae -> :sswitch_0
        0xdaf -> :sswitch_0
        0xdb0 -> :sswitch_0
        0xdb1 -> :sswitch_0
        0xdb2 -> :sswitch_0
        0xdb3 -> :sswitch_0
        0xdb4 -> :sswitch_0
        0xdb5 -> :sswitch_0
        0xdb6 -> :sswitch_0
        0xdb7 -> :sswitch_0
        0xdb8 -> :sswitch_0
        0xdb9 -> :sswitch_0
        0xdba -> :sswitch_0
        0xdbb -> :sswitch_0
        0xdbc -> :sswitch_0
        0xdbd -> :sswitch_0
        0xdbe -> :sswitch_0
        0xdbf -> :sswitch_0
        0xdc0 -> :sswitch_0
        0xdc1 -> :sswitch_0
        0xdc2 -> :sswitch_0
        0xdc3 -> :sswitch_0
        0xdc4 -> :sswitch_0
        0xdc5 -> :sswitch_0
        0xdc6 -> :sswitch_0
        0xdc7 -> :sswitch_0
        0xdc8 -> :sswitch_0
        0xdc9 -> :sswitch_0
        0xdca -> :sswitch_0
        0xdcb -> :sswitch_0
        0xdcc -> :sswitch_0
        0xdcd -> :sswitch_0
        0xdce -> :sswitch_0
        0xdcf -> :sswitch_0
        0xdd0 -> :sswitch_0
    .end sparse-switch
.end method
