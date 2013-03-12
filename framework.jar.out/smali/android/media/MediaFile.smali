.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GA:I = 0xa

.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AK3G:I = 0x137

.field public static final FILE_TYPE_AK3GV:I = 0x157

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x23

.field public static final FILE_TYPE_DCF:I = 0x35

.field public static final FILE_TYPE_DCF_SKT:I = 0x12c

.field public static final FILE_TYPE_DIVX:I = 0xca

.field public static final FILE_TYPE_DM:I = 0x34

.field public static final FILE_TYPE_EVC:I = 0x11

.field public static final FILE_TYPE_FL:I = 0x33

.field public static final FILE_TYPE_FLAC:I = 0xc

.field public static final FILE_TYPE_FLV:I = 0xcc

.field public static final FILE_TYPE_GIF:I = 0x21

.field public static final FILE_TYPE_HTML:I = 0x65

.field public static final FILE_TYPE_HTTPLIVE:I = 0x2c

.field public static final FILE_TYPE_IMY:I = 0x10

.field public static final FILE_TYPE_ISMA:I = 0xd

.field public static final FILE_TYPE_ISMV:I = 0x1f

.field public static final FILE_TYPE_JPEG:I = 0x20

.field public static final FILE_TYPE_K3G:I = 0x154

.field public static final FILE_TYPE_K3GA:I = 0x142

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xe

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MP2PS:I = 0xc8

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_MS_EXCEL:I = 0x69

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x6a

.field public static final FILE_TYPE_MS_WORD:I = 0x68

.field public static final FILE_TYPE_ODF_LGU:I = 0x141

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PDF:I = 0x66

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x22

.field public static final FILE_TYPE_PYA:I = 0xb

.field public static final FILE_TYPE_PYV:I = 0xc9

.field public static final FILE_TYPE_QCP:I = 0x12

.field public static final FILE_TYPE_RMF:I = 0xcb

.field public static final FILE_TYPE_SKA:I = 0x12d

.field public static final FILE_TYPE_SKM:I = 0x155

.field public static final FILE_TYPE_SKV:I = 0x156

.field public static final FILE_TYPE_SMF:I = 0xf

.field public static final FILE_TYPE_TEXT:I = 0x64

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x24

.field public static final FILE_TYPE_WEBM:I = 0x1e

.field public static final FILE_TYPE_WEBP:I = 0x25

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field public static final FILE_TYPE_XML:I = 0x67

.field public static final FILE_TYPE_ZIP:I = 0x6b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_DRM_FILE_TYPE:I = 0x33

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x20

.field private static final FIRST_KOR_AUDIO_FILE_TYPE:I = 0x12c

.field private static final FIRST_KOR_VIDEO_FILE_TYPE:I = 0x154

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xe

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_SECMM_VIDEO_FILE_TYPE:I = 0xc8

.field private static final FIRST_USA_SPEECH_FILE_TYPE:I = 0x11

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xd

.field private static final LAST_DRM_FILE_TYPE:I = 0x35

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x25

.field private static final LAST_KOR_AUDIO_FILE_TYPE:I = 0x142

.field private static final LAST_KOR_VIDEO_FILE_TYPE:I = 0x157

.field private static final LAST_MIDI_FILE_TYPE:I = 0x10

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2c

.field private static final LAST_SECMM_VIDEO_FILE_TYPE:I = 0xcc

.field private static final LAST_USA_SPEECH_FILE_TYPE:I = 0x12

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1f

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xca

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x15

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/16 v5, 0x300b

    const/16 v4, 0xe

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    .line 280
    const-string v0, "MP3"

    const-string v1, "audio/mpeg"

    const/16 v2, 0x3009

    invoke-static {v0, v6, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 281
    const-string v0, "M4A"

    const/4 v1, 0x2

    const-string v2, "audio/mp4"

    invoke-static {v0, v1, v2, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 282
    const-string v0, "WAV"

    const/4 v1, 0x3

    const-string v2, "audio/x-wav"

    const/16 v3, 0x3008

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 283
    const-string v0, "AMR"

    const/4 v1, 0x4

    const-string v2, "audio/amr"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    const-string v0, "AWB"

    const/4 v1, 0x5

    const-string v2, "audio/amr-wb"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    const-string v0, "3GP"

    const/16 v1, 0xa

    const-string v2, "audio/3gpp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    const-string v0, "3GA"

    const/16 v1, 0xa

    const-string v2, "audio/3gpp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 289
    const-string v0, "ASF"

    const/4 v1, 0x6

    const-string v2, "audio/x-ms-wma"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    const-string v0, "WMA"

    const/4 v1, 0x6

    const-string v2, "audio/x-ms-wma"

    const v3, 0xb901

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 300
    invoke-static {}, Landroid/media/MediaFile;->isQCPEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const-string v0, "QCP"

    const/16 v1, 0x12

    const-string v2, "audio/qcelp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 303
    const-string v0, "EVC"

    const/16 v1, 0x11

    const-string v2, "audio/evrc"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 307
    :cond_0
    const-string v0, "OGG"

    const/4 v1, 0x7

    const-string v2, "audio/ogg"

    const v3, 0xb902

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 308
    const-string v0, "OGG"

    const/4 v1, 0x7

    const-string v2, "application/ogg"

    const v3, 0xb902

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 309
    const-string v0, "OGA"

    const/4 v1, 0x7

    const-string v2, "application/ogg"

    const v3, 0xb902

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 310
    const-string v0, "AAC"

    const-string v1, "audio/aac"

    const v2, 0xb903

    invoke-static {v0, v7, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 311
    const-string v0, "AAC"

    const-string v1, "audio/aac-adts"

    const v2, 0xb903

    invoke-static {v0, v7, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 312
    const-string v0, "MKA"

    const/16 v1, 0x9

    const-string v2, "audio/x-matroska"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 315
    const-string v0, "PYA"

    const/16 v1, 0xb

    const-string v2, "audio/vnd.ms-playready.media.pya"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    const-string v0, "AAC"

    const-string v1, "audio/mp4a-latm"

    const v2, 0xb903

    invoke-static {v0, v7, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 317
    const-string v0, "AAC"

    const-string v1, "audio/m4a"

    const v2, 0xb903

    invoke-static {v0, v7, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 318
    const-string v0, "MID"

    const-string v1, "audio/mid"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    const-string v0, "MIDI"

    const-string v1, "audio/mid"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    const-string v0, "MID"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    const-string v0, "MIDI"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 323
    const-string v0, "XMF"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 324
    const-string v0, "RTTTL"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    const-string v0, "SMF"

    const/16 v1, 0xf

    const-string v2, "audio/sp-midi"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 326
    const-string v0, "IMY"

    const/16 v1, 0x10

    const-string v2, "audio/imelody"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    const-string v0, "RTX"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 328
    const-string v0, "OTA"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    const-string v0, "MXMF"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 331
    const-string v0, "MPEG"

    const-string/jumbo v1, "video/mpeg"

    invoke-static {v0, v8, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 332
    const-string v0, "MPG"

    const-string/jumbo v1, "video/mpeg"

    invoke-static {v0, v8, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 333
    const-string v0, "MP4"

    const-string/jumbo v1, "video/mp4"

    invoke-static {v0, v8, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 334
    const-string v0, "MP4"

    const-string/jumbo v1, "video/mpeg4"

    invoke-static {v0, v8, v1, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 335
    const-string v0, "M4V"

    const/16 v1, 0x16

    const-string/jumbo v2, "video/mp4"

    invoke-static {v0, v1, v2, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 336
    const-string v0, "3GP"

    const/16 v1, 0x17

    const-string/jumbo v2, "video/3gpp"

    const v3, 0xb984

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 337
    const-string v0, "3GPP"

    const/16 v1, 0x17

    const-string/jumbo v2, "video/3gpp"

    const v3, 0xb984

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 338
    const-string v0, "3G2"

    const/16 v1, 0x18

    const-string/jumbo v2, "video/3gpp2"

    const v3, 0xb984

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 339
    const-string v0, "3GPP2"

    const/16 v1, 0x18

    const-string/jumbo v2, "video/3gpp2"

    const v3, 0xb984

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 340
    const-string v0, "MKV"

    const/16 v1, 0x1b

    const-string/jumbo v2, "video/x-matroska"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 341
    const-string v0, "WEBM"

    const/16 v1, 0x1e

    const-string/jumbo v2, "video/webm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 342
    const-string v0, "TS"

    const/16 v1, 0x1c

    const-string/jumbo v2, "video/mp2ts"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 343
    const-string v0, "AVI"

    const/16 v1, 0x1d

    const-string/jumbo v2, "video/avi"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 347
    const-string v0, "WMV"

    const/16 v1, 0x19

    const-string/jumbo v2, "video/x-ms-wmv"

    const v3, 0xb981

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 348
    const-string v0, "ASF"

    const/16 v1, 0x1a

    const-string/jumbo v2, "video/x-ms-asf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    const-string v0, "PYV"

    const/16 v1, 0xc9

    const-string/jumbo v2, "video/vnd.ms-playready.media.pyv"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 355
    const-string v0, "DM"

    const/16 v1, 0x34

    const-string v2, "application/vnd.oma.drm.content"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 356
    const-string v0, "DCF"

    const/16 v1, 0x35

    const-string v2, "application/vnd.oma.drm.content"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 357
    const-string v0, "JPG"

    const/16 v1, 0x20

    const-string v2, "image/jpg"

    const/16 v3, 0x3801

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 358
    const-string v0, "JPEG"

    const/16 v1, 0x20

    const-string v2, "image/jpg"

    const/16 v3, 0x3801

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 359
    const-string v0, "BMP"

    const/16 v1, 0x23

    const-string v2, "image/bmp"

    const/16 v3, 0x3804

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 361
    const-string v0, "JPG"

    const/16 v1, 0x20

    const-string v2, "image/jpeg"

    const/16 v3, 0x3801

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 362
    const-string v0, "JPEG"

    const/16 v1, 0x20

    const-string v2, "image/jpeg"

    const/16 v3, 0x3801

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 363
    const-string v0, "GIF"

    const/16 v1, 0x21

    const-string v2, "image/gif"

    const/16 v3, 0x3807

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 364
    const-string v0, "PNG"

    const/16 v1, 0x22

    const-string v2, "image/png"

    const/16 v3, 0x380b

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 365
    const-string v0, "BMP"

    const/16 v1, 0x23

    const-string v2, "image/x-ms-bmp"

    const/16 v3, 0x3804

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 366
    const-string v0, "WBMP"

    const/16 v1, 0x24

    const-string v2, "image/vnd.wap.wbmp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 367
    const-string v0, "WEBP"

    const/16 v1, 0x25

    const-string v2, "image/webp"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 369
    const-string v0, "M3U"

    const/16 v1, 0x29

    const-string v2, "audio/x-mpegurl"

    const v3, 0xba11

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 370
    const-string v0, "M3U"

    const/16 v1, 0x29

    const-string v2, "application/x-mpegurl"

    const v3, 0xba11

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 371
    const-string v0, "PLS"

    const/16 v1, 0x2a

    const-string v2, "audio/x-scpls"

    const v3, 0xba14

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 372
    const-string v0, "WPL"

    const/16 v1, 0x2b

    const-string v2, "application/vnd.ms-wpl"

    const v3, 0xba10

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 373
    const-string v0, "M3U8"

    const/16 v1, 0x2c

    const-string v2, "application/vnd.apple.mpegurl"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 374
    const-string v0, "M3U8"

    const/16 v1, 0x2c

    const-string v2, "audio/mpegurl"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 375
    const-string v0, "M3U8"

    const/16 v1, 0x2c

    const-string v2, "audio/x-mpegurl"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 377
    const-string v0, "FL"

    const/16 v1, 0x33

    const-string v2, "application/x-android-drm-fl"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 379
    const-string v0, "TXT"

    const/16 v1, 0x64

    const-string/jumbo v2, "text/plain"

    const/16 v3, 0x3004

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 380
    const-string v0, "HTM"

    const/16 v1, 0x65

    const-string/jumbo v2, "text/html"

    const/16 v3, 0x3005

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 381
    const-string v0, "HTML"

    const/16 v1, 0x65

    const-string/jumbo v2, "text/html"

    const/16 v3, 0x3005

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 382
    const-string v0, "PDF"

    const/16 v1, 0x66

    const-string v2, "application/pdf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 383
    const-string v0, "DOC"

    const/16 v1, 0x68

    const-string v2, "application/msword"

    const v3, 0xba83

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 384
    const-string v0, "XLS"

    const/16 v1, 0x69

    const-string v2, "application/vnd.ms-excel"

    const v3, 0xba85

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 385
    const-string v0, "PPT"

    const/16 v1, 0x6a

    const-string v2, "application/mspowerpoint"

    const v3, 0xba86

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 386
    const-string v0, "FLAC"

    const/16 v1, 0xc

    const-string v2, "audio/flac"

    const v3, 0xb906

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 387
    const-string v0, "ZIP"

    const/16 v1, 0x6b

    const-string v2, "application/zip"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 388
    const-string v0, "MPG"

    const/16 v1, 0xc8

    const-string/jumbo v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 389
    const-string v0, "MPEG"

    const/16 v1, 0xc8

    const-string/jumbo v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 391
    const-string v0, "DIVX"

    const/16 v1, 0xca

    const-string/jumbo v2, "video/divx"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 392
    const-string v0, "FLV"

    const/16 v1, 0xcc

    const-string/jumbo v2, "video/flv"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_MyFiles_SupportRmvbFileFormat"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    const-string v0, "RAM"

    const/16 v1, 0xcb

    const-string/jumbo v2, "video/rmf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 396
    const-string v0, "RM"

    const/16 v1, 0xcb

    const-string/jumbo v2, "video/rmf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 397
    const-string v0, "RMVB"

    const/16 v1, 0xcb

    const-string/jumbo v2, "video/rmf"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 408
    :cond_1
    const-string v0, "KOR"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v6, :cond_3

    .line 409
    const-string v0, "SKM"

    const/16 v1, 0x155

    const-string/jumbo v2, "video/skm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 410
    const-string v0, "SKV"

    const/16 v1, 0x156

    const-string/jumbo v2, "video/skm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 411
    const-string v0, "SKA"

    const/16 v1, 0x12d

    const-string v2, "audio/skm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 412
    const-string v0, "K3G"

    const/16 v1, 0x154

    const-string/jumbo v2, "video/k3g"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 413
    const-string v0, "K3G"

    const/16 v1, 0x154

    const-string/jumbo v2, "video/kr3g"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 414
    const-string v0, "K3G"

    const/16 v1, 0x142

    const-string v2, "audio/kr3g"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 415
    const-string v0, "K3G"

    const/16 v1, 0x142

    const-string v2, "audio/k3g"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    const-string v0, "SKM"

    const/16 v1, 0x155

    const-string/jumbo v2, "video/skm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 417
    const-string v0, "SKV"

    const/16 v1, 0x156

    const-string/jumbo v2, "video/skm"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 418
    const-string v0, "AK3G"

    const/16 v1, 0x137

    const-string v2, "audio/ak3g"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 419
    const-string v0, "AK3G"

    const/16 v1, 0x157

    const-string/jumbo v2, "video/ak3g"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 421
    const-string v0, "LGT"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v6, :cond_2

    .line 422
    const-string v0, "ODF"

    const/16 v1, 0x141

    const-string v2, "audio/x-mp3"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 425
    :cond_2
    const-string v0, "SKT"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v6, :cond_3

    .line 426
    const-string v0, "DCF"

    const/16 v1, 0x12c

    const-string v2, "audio/x-mp3"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 430
    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    return-void
.end method

.method private static _isAudioFileType(I)Z
    .locals 2
    .parameter "fileType"

    .prologue
    const/4 v0, 0x1

    .line 433
    if-lt p0, v0, :cond_0

    const/16 v1, 0xd

    if-le p0, v1, :cond_2

    :cond_0
    const/16 v1, 0xe

    if-lt p0, v1, :cond_1

    const/16 v1, 0x10

    if-le p0, v1, :cond_2

    :cond_1
    const/16 v1, 0x11

    if-lt p0, v1, :cond_3

    const/16 v1, 0x12

    if-gt p0, v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 231
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"
    .parameter "mtpFormatCode"

    .prologue
    .line 236
    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    sget-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 525
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 526
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 527
    add-int/lit8 v1, v1, 0x1

    .line 528
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 529
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 533
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 534
    .local v0, lastDot:I
    if-lez v0, :cond_1

    .line 535
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 537
    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 3
    .parameter "path"

    .prologue
    .line 510
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 511
    .local v0, lastDot:I
    if-gez v0, :cond_0

    .line 512
    const/4 v1, 0x0

    .line 513
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFile$MediaFileType;

    goto :goto_0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 541
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 542
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 551
    if-eqz p1, :cond_0

    .line 552
    sget-object v3, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 553
    .local v2, value:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 554
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 565
    .end local v2           #value:Ljava/lang/Integer;
    :goto_0
    return v3

    .line 557
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 558
    .local v1, lastDot:I
    if-lez v1, :cond_1

    .line 559
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, extension:Ljava/lang/String;
    sget-object v3, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 561
    .restart local v2       #value:Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 562
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 565
    .end local v0           #extension:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/Integer;
    :cond_1
    const/16 v3, 0x3000

    goto :goto_0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 546
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 547
    .local v0, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 2
    .parameter "formatCode"

    .prologue
    .line 569
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isAudioFileType(I)Z
    .locals 9
    .parameter "fileType"

    .prologue
    const/16 v8, 0x12c

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 442
    invoke-static {p0}, Landroid/media/MediaFile;->_isAudioFileType(I)Z

    move-result v3

    .line 444
    .local v3, bOrg:Z
    const-string v6, "KOR"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_9

    .line 445
    if-lt p0, v8, :cond_2

    const/16 v6, 0x142

    if-gt p0, v6, :cond_2

    move v1, v4

    .line 448
    .local v1, bKORMM:Z
    :goto_0
    const-string v6, "LGT"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_4

    .line 449
    const/16 v6, 0x141

    if-ne p0, v6, :cond_3

    move v0, v4

    .line 450
    .local v0, bKORLGU:Z
    :goto_1
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v5, v4

    .line 461
    .end local v0           #bKORLGU:Z
    .end local v1           #bKORMM:Z
    :cond_1
    :goto_2
    return v5

    :cond_2
    move v1, v5

    .line 445
    goto :goto_0

    .restart local v1       #bKORMM:Z
    :cond_3
    move v0, v5

    .line 449
    goto :goto_1

    .line 453
    :cond_4
    const-string v6, "SKT"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_7

    .line 454
    if-ne p0, v8, :cond_6

    move v2, v4

    .line 455
    .local v2, bKORSKT:Z
    :goto_3
    if-nez v3, :cond_5

    if-nez v1, :cond_5

    if-eqz v2, :cond_1

    :cond_5
    move v5, v4

    goto :goto_2

    .end local v2           #bKORSKT:Z
    :cond_6
    move v2, v5

    .line 454
    goto :goto_3

    .line 458
    :cond_7
    if-nez v3, :cond_8

    if-eqz v1, :cond_1

    :cond_8
    move v5, v4

    goto :goto_2

    .end local v1           #bKORMM:Z
    :cond_9
    move v5, v3

    .line 461
    goto :goto_2
.end method

.method public static isDrmFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 505
    const/16 v0, 0x33

    if-lt p0, v0, :cond_0

    const/16 v0, 0x35

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 495
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x25

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 517
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 518
    .local v0, fileType:I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 500
    const/16 v0, 0x29

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2c

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isQCPEnabled()Z
    .locals 2

    .prologue
    .line 268
    const-string v0, ""

    .line 270
    .local v0, region:Ljava/lang/String;
    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    :cond_0
    const/4 v1, 0x1

    .line 275
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(I)Z
    .locals 7
    .parameter "fileType"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 477
    const/16 v5, 0x15

    if-lt p0, v5, :cond_2

    const/16 v5, 0x1f

    if-gt p0, v5, :cond_2

    move v1, v3

    .line 480
    .local v1, bOrg:Z
    :goto_0
    const/16 v5, 0xc8

    if-lt p0, v5, :cond_3

    const/16 v5, 0xcc

    if-gt p0, v5, :cond_3

    move v2, v3

    .line 483
    .local v2, bSECMM:Z
    :goto_1
    const-string v5, "KOR"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_5

    .line 485
    const/16 v5, 0x154

    if-lt p0, v5, :cond_4

    const/16 v5, 0x157

    if-gt p0, v5, :cond_4

    move v0, v3

    .line 487
    .local v0, bKORMM:Z
    :goto_2
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v4, v3

    .line 490
    .end local v0           #bKORMM:Z
    :cond_1
    :goto_3
    return v4

    .end local v1           #bOrg:Z
    .end local v2           #bSECMM:Z
    :cond_2
    move v1, v4

    .line 477
    goto :goto_0

    .restart local v1       #bOrg:Z
    :cond_3
    move v2, v4

    .line 480
    goto :goto_1

    .restart local v2       #bSECMM:Z
    :cond_4
    move v0, v4

    .line 485
    goto :goto_2

    .line 490
    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_1

    :cond_6
    move v4, v3

    goto :goto_3
.end method

.method private static isWMAEnabled()Z
    .locals 5

    .prologue
    .line 243
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v2

    .line 244
    .local v2, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 245
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 246
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 247
    .local v1, decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v1, v4, :cond_0

    .line 248
    const/4 v4, 0x1

    .line 251
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :goto_1
    return v4

    .line 245
    .restart local v1       #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static isWMVEnabled()Z
    .locals 5

    .prologue
    .line 255
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v2

    .line 256
    .local v2, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 257
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 258
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 259
    .local v1, decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v1, v4, :cond_0

    .line 260
    const/4 v4, 0x1

    .line 263
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :goto_1
    return v4

    .line 257
    .restart local v1       #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
