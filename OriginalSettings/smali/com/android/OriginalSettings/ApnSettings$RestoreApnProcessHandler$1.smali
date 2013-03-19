.class Lcom/android/settings/ApnSettings$RestoreApnProcessHandler$1;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler$1;->this$1:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 642
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler$1;->this$1:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    #getter for: Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->access$800(Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler$1;->this$1:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    new-instance v1, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler$1;->this$1:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    iget-object v2, v2, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V

    #setter for: Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->access$802(Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;Landroid/os/Handler;)Landroid/os/Handler;

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler$1;->this$1:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    #getter for: Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->access$800(Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 650
    :cond_1
    return-void
.end method
