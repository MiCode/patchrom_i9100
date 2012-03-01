.class Lcom/android/phone/InVTCallScreen$45;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 9708
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$45;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 9710
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$45;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->removeDialog(I)V

    .line 9711
    const-string v0, "InVTCallScreen"

    const-string v1, "Remove DIALOG_NORMAL_VOICE_CALL dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9713
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$45;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9714
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$45;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9721
    :goto_0
    return-void

    .line 9719
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$45;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$3300(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_0
.end method
