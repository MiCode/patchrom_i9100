.class Landroid/graphics/Bitmap$BitmapFinalizer;
.super Ljava/lang/Object;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapFinalizer"
.end annotation


# instance fields
.field private final mNativeBitmap:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "nativeBitmap"

    .prologue
    .line 1199
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1200
    iput p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:I

    .line 1201
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    .prologue
    .line 1206
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:I

    #calls: Landroid/graphics/Bitmap;->nativeDestructor(I)V
    invoke-static {v0}, Landroid/graphics/Bitmap;->access$100(I)V

    .line 1212
    :goto_0
    return-void

    .line 1207
    :catch_0
    move-exception v0

    .line 1210
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:I

    #calls: Landroid/graphics/Bitmap;->nativeDestructor(I)V
    invoke-static {v0}, Landroid/graphics/Bitmap;->access$100(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:I

    #calls: Landroid/graphics/Bitmap;->nativeDestructor(I)V
    invoke-static {v1}, Landroid/graphics/Bitmap;->access$100(I)V

    throw v0
.end method
