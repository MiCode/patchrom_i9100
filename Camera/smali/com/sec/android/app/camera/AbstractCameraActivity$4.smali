.class Lcom/sec/android/app/camera/AbstractCameraActivity$4;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->inflateWaitingView()V

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 581
    :cond_1
    return-void
.end method
