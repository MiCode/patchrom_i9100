.class Lcom/sec/android/app/camera/AbstractCameraActivity$32;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->handleLowBattery(Z)V
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
    .line 2037
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$32;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2039
    const/16 v1, 0x1b

    if-ne p2, v1, :cond_1

    .line 2050
    :cond_0
    :goto_0
    return v0

    .line 2043
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    const/16 v1, 0x52

    if-eq p2, v1, :cond_2

    const/16 v1, 0x17

    if-ne p2, v1, :cond_3

    .line 2045
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$32;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto :goto_0

    .line 2047
    :cond_3
    const/16 v1, 0x54

    if-eq p2, v1, :cond_0

    .line 2050
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$32;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
