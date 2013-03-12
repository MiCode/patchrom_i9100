.class public Lcom/samsung/ScreenCapture/CaptureImg;
.super Ljava/lang/Object;
.source "CaptureImg.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/ScreenCapture/CaptureImg;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_SCREEN_CAPUTRE_TYPE_H264:I = 0x4

.field public static final STATE_SCREEN_CAPUTRE_TYPE_JPEG_QUALITY_LEVEL_1:I = 0x0

.field public static final STATE_SCREEN_CAPUTRE_TYPE_JPEG_QUALITY_LEVEL_2:I = 0x1

.field public static final STATE_SCREEN_CAPUTRE_TYPE_JPEG_QUALITY_LEVEL_3:I = 0x2

.field public static final STATE_SCREEN_CAPUTRE_TYPE_JPEG_QUALITY_LEVEL_4:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CaptureImg"


# instance fields
.field public data:[B

.field public imgtype:I

.field public offset:I

.field public size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/samsung/ScreenCapture/CaptureImg$1;

    invoke-direct {v0}, Lcom/samsung/ScreenCapture/CaptureImg$1;-><init>()V

    sput-object v0, Lcom/samsung/ScreenCapture/CaptureImg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lcom/samsung/ScreenCapture/CaptureImg;->imgtype:I

    .line 46
    iput v0, p0, Lcom/samsung/ScreenCapture/CaptureImg;->offset:I

    .line 47
    iput v0, p0, Lcom/samsung/ScreenCapture/CaptureImg;->size:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ScreenCapture/CaptureImg;->data:[B

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p0, p1}, Lcom/samsung/ScreenCapture/CaptureImg;->readFromParcel(Landroid/os/Parcel;)V

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/ScreenCapture/CaptureImg$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/ScreenCapture/CaptureImg;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/ScreenCapture/CaptureImg;->imgtype:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/ScreenCapture/CaptureImg;->offset:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/ScreenCapture/CaptureImg;->size:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .local v0, datalen:I
    if-lez v0, :cond_0

    .line 83
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/ScreenCapture/CaptureImg;->data:[B

    .line 84
    iget-object v1, p0, Lcom/samsung/ScreenCapture/CaptureImg;->data:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/ScreenCapture/CaptureImg;->data:[B

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 61
    iget v0, p0, Lcom/samsung/ScreenCapture/CaptureImg;->imgtype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/samsung/ScreenCapture/CaptureImg;->offset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/samsung/ScreenCapture/CaptureImg;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lcom/samsung/ScreenCapture/CaptureImg;->data:[B

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/samsung/ScreenCapture/CaptureImg;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lcom/samsung/ScreenCapture/CaptureImg;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method
