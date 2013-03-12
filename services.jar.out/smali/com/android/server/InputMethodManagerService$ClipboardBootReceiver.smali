.class Lcom/android/server/InputMethodManagerService$ClipboardBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClipboardBootReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ClipboardBootReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 672
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, intentAction:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ClipboardBootReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/InputMethodManagerService;->mBootCompleted:Z
    invoke-static {v1, v2}, Lcom/android/server/InputMethodManagerService;->access$702(Lcom/android/server/InputMethodManagerService;Z)Z

    .line 676
    :cond_0
    return-void
.end method
