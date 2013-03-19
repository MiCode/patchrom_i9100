.class Lcom/sec/android/app/camera/CropImage$4;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CropImage;->startFaceDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 295
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 296
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage;->access$100(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage;->access$100(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    const/4 v4, -0x1

    const/high16 v5, 0x10

    invoke-interface {v3, v4, v5}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 300
    .local v0, b:Landroid/graphics/Bitmap;
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage;->access$400(Lcom/sec/android/app/camera/CropImage;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/CropImage$4$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/sec/android/app/camera/CropImage$4$1;-><init>(Lcom/sec/android/app/camera/CropImage$4;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 319
    return-void

    .line 296
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 315
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 316
    .local v1, e:Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
