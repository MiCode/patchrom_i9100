.class public Landroid/drm/DrmInfoRequest;
.super Ljava/lang/Object;
.source "DrmInfoRequest.java"


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final ANALOG_VIDEO:Ljava/lang/String; = "analog_video"

.field public static final APP_ID:Ljava/lang/String; = "app_Id"

.field public static final COMP_DIGI_AUDIO:Ljava/lang/String; = "comp_digi_audio"

.field public static final COMP_DIGI_VIDEO:Ljava/lang/String; = "comp_digi_video"

.field public static final CUSTOM_DATA:Ljava/lang/String; = "custom_data"

.field public static final DAY:Ljava/lang/String; = "day"

.field public static final DOMAIN_CONTROLLER:Ljava/lang/String; = "domain_controller"

.field public static final DRMPERMISSIONTYPE_ID:Ljava/lang/String; = "drmpermission_type"

.field public static final DRM_BUFFER:Ljava/lang/String; = "drm_buffer"

.field public static final DRM_BUFFER_SIZE:Ljava/lang/String; = "drm_buffer_size"

.field public static final DRM_EOF:Ljava/lang/String; = "drm_eof"

.field public static final DRM_HEADER:Ljava/lang/String; = "drmHeader"

.field public static final DRM_INFO_NEVER_REGISTERED:Ljava/lang/String; = "Drm Never Registered"

.field public static final DRM_INFO_NOT_AUTHORIZED:Ljava/lang/String; = "Not Authorized"

.field public static final DRM_INFO_NOT_REGISTERED:Ljava/lang/String; = "Not Registered"

.field public static final DRM_INFO_REGISTERED:Ljava/lang/String; = "Registered"

.field public static final DRM_INFO_REGISTRATION_STATUS:Ljava/lang/String; = "Registration Status"

.field public static final DRM_INFO_RENTAL_EXPIRED:Ljava/lang/String; = "Drm  Rental Expired"

.field public static final DRM_INIT_JOINDOMAIN:I = 0x18

.field public static final DRM_INIT_LEAVEDOMAIN:I = 0x19

.field public static final DRM_INIT_LICENSEACQUISITION:I = 0x1a

.field public static final DRM_INIT_METERING:I = 0x1b

.field public static final DRM_INIT_UNKNOWN:I = 0x17

.field public static final DRM_OFFSET:Ljava/lang/String; = "drm_offset"

.field public static final DRM_PATH:Ljava/lang/String; = "drm_path"

.field public static final FAIL:Ljava/lang/String; = "fail"

.field public static final HOUR:Ljava/lang/String; = "hour"

.field public static final IMEI:Ljava/lang/String; = "imei"

.field public static final INITIATOR_URL:Ljava/lang/String; = "Initiator_Url"

.field public static final MAX_PACKETS:Ljava/lang/String; = "max_packets"

.field public static final MEDIA_HUB:Ljava/lang/String; = "media_hub"

.field public static final METERING_ID:Ljava/lang/String; = "metering_id"

.field public static final MINUTE:Ljava/lang/String; = "minute"

.field public static final MONTH:Ljava/lang/String; = "month"

.field public static final ORDER_ID:Ljava/lang/String; = "orderId"

.field public static final PREVIEWOPTION_ID:Ljava/lang/String; = "preview_option"

.field public static final REMOVE_RIGHTS:Ljava/lang/String; = "remove_rights"

.field public static final REVISION:Ljava/lang/String; = "revision"

.field public static final SECOND:Ljava/lang/String; = "second"

.field public static final SERVICE_ID:Ljava/lang/String; = "service_id"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final SUBSCRIPTION_ID:Ljava/lang/String; = "subscription_id"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field public static final TYPE_CONSUME_RIGHTS:I = 0x1c

.field public static final TYPE_CONVERT_DRM_FILE:I = 0x7

.field public static final TYPE_DELETE_DRM_FILE:I = 0x15

.field public static final TYPE_ENY_DECRYPT:I = 0x33

.field public static final TYPE_GET_DCFHEADER_INFO:I = 0x13

.field public static final TYPE_GET_DECRYPT_IMAGE:I = 0xa

.field public static final TYPE_GET_DRMFILE_INFO:I = 0xe

.field public static final TYPE_GET_FILE_PATH:I = 0x9

.field public static final TYPE_GET_OPTION_MENU:I = 0x10

.field public static final TYPE_GET_PERMISSION_TYPE:I = 0xf

.field public static final TYPE_HANDLE_TVOUT:I = 0xb

.field public static final TYPE_HANDLE_TVOUT_UNPLUGGED:I = 0xc

.field public static final TYPE_INITIATOR_PROCESS_INFO:I = 0x16

.field public static final TYPE_IS_CONVERTED_FL:I = 0x11

.field public static final TYPE_JOIN_DOMAIN:I = 0x20

.field public static final TYPE_LEAVE_DOMAIN:I = 0x21

.field public static final TYPE_OUTPUT_PROTECTION_LEVEL:I = 0x1d

.field public static final TYPE_QUERY_DOMAIN:I = 0x1f

.field public static final TYPE_REGISTER_DRM_FILE:I = 0x8

.field public static final TYPE_REGISTRATION_INFO:I = 0x1

.field public static final TYPE_REGISTRATION_STATUS:I = 0x1e

.field public static final TYPE_RIGHTS_ACQUISITION_INFO:I = 0x3

.field public static final TYPE_RIGHTS_ACQUISITION_PROGRESS_INFO:I = 0x4

.field public static final TYPE_RINGTONE_UPDATE_ALARM:I = 0x14

.field public static final TYPE_SEND_METER_DATA:I = 0x22

.field public static final TYPE_SET_AS_RINGTONE:I = 0x12

.field public static final TYPE_SET_SECURE_CLOCK:I = 0x5

.field public static final TYPE_UNREGISTRATION_INFO:I = 0x2

.field public static final TYPE_UPDATE_SECURE_CLOCK:I = 0x6

.field public static final UNCOMP_DIGI_AUDIO:Ljava/lang/String; = "uncomp_digi_audio"

.field public static final UNCOMP_DIGI_VIDEO:Ljava/lang/String; = "uncomp_digi_video"

.field public static final USER_GUID:Ljava/lang/String; = "user_guid"

.field public static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mInfoType:I

.field private final mMimeType:Ljava/lang/String;

.field private final mRequestInformation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .parameter "infoType"
    .parameter "mimeType"

    .prologue
    .line 195
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    .line 196
    iput p1, p0, Landroid/drm/DrmInfoRequest;->mInfoType:I

    .line 197
    iput-object p2, p0, Landroid/drm/DrmInfoRequest;->mMimeType:Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Landroid/drm/DrmInfoRequest;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mimeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static isValidType(I)Z
    .locals 1
    .parameter "infoType"

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, isValid:Z
    packed-switch p0, :pswitch_data_0

    .line 321
    :goto_0
    :pswitch_0
    return v0

    .line 318
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 242
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInfoType()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Landroid/drm/DrmInfoRequest;->mInfoType:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method isValid()Z
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mMimeType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/drm/DrmInfoRequest;->mInfoType:I

    invoke-static {v0}, Landroid/drm/DrmInfoRequest;->isValidType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 230
    iget-object v0, p0, Landroid/drm/DrmInfoRequest;->mRequestInformation:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method
