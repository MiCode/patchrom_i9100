.class final Lcom/samsung/ScreenCapture/CaptureImg$1;
.super Ljava/lang/Object;
.source "CaptureImg.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ScreenCapture/CaptureImg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/ScreenCapture/CaptureImg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/ScreenCapture/CaptureImg;
    .locals 2
    .parameter "source"

    .prologue
    .line 96
    new-instance v0, Lcom/samsung/ScreenCapture/CaptureImg;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/ScreenCapture/CaptureImg;-><init>(Landroid/os/Parcel;Lcom/samsung/ScreenCapture/CaptureImg$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/ScreenCapture/CaptureImg$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/ScreenCapture/CaptureImg;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/ScreenCapture/CaptureImg;
    .locals 1
    .parameter "size"

    .prologue
    .line 100
    new-array v0, p1, [Lcom/samsung/ScreenCapture/CaptureImg;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/ScreenCapture/CaptureImg$1;->newArray(I)[Lcom/samsung/ScreenCapture/CaptureImg;

    move-result-object v0

    return-object v0
.end method
