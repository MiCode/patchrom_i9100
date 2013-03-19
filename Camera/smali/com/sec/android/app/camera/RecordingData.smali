.class public Lcom/sec/android/app/camera/RecordingData;
.super Ljava/lang/Object;
.source "RecordingData.java"


# instance fields
.field private mRecordingOnlyBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/camera/RecordingData;->mRecordingOnlyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/RecordingData;->mRecordingOnlyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/RecordingData;->mRecordingOnlyBitmap:Landroid/graphics/Bitmap;

    .line 36
    :cond_0
    return-void
.end method

.method public getRecordingData()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/RecordingData;->mRecordingOnlyBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/RecordingData;->mRecordingOnlyBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public setRecordingData(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sec/android/app/camera/RecordingData;->mRecordingOnlyBitmap:Landroid/graphics/Bitmap;

    .line 29
    return-void
.end method
