.class Lcom/sec/android/app/camera/AbstractCameraActivity$22;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1744
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$22;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1746
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    if-eq p2, v3, :cond_0

    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    const/16 v1, 0x17

    if-ne p2, v1, :cond_1

    .line 1748
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$22;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->removeDialog(I)V

    .line 1749
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$22;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-boolean v2, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    .line 1750
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$22;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-boolean v2, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsFromSNS:Z

    .line 1753
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$22;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
