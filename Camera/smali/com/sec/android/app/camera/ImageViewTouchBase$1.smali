.class Lcom/sec/android/app/camera/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/sec/android/app/camera/RotateBitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ImageViewTouchBase;

.field final synthetic val$bitmap:Lcom/sec/android/app/camera/RotateBitmap;

.field final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ImageViewTouchBase;Lcom/sec/android/app/camera/RotateBitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase$1;->this$0:Lcom/sec/android/app/camera/ImageViewTouchBase;

    iput-object p2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase$1;->val$bitmap:Lcom/sec/android/app/camera/RotateBitmap;

    iput-boolean p3, p0, Lcom/sec/android/app/camera/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase$1;->this$0:Lcom/sec/android/app/camera/ImageViewTouchBase;

    iget-object v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase$1;->val$bitmap:Lcom/sec/android/app/camera/RotateBitmap;

    iget-boolean v2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/sec/android/app/camera/RotateBitmap;Z)V

    .line 164
    return-void
.end method
