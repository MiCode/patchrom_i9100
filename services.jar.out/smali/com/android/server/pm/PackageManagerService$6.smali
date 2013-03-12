.class Lcom/android/server/pm/PackageManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->willScanFor3LM(Lcom/android/server/pm/PackageManagerService$InstallArgs;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$nextState:I

.field final synthetic val$scanId:I

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6780
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$6;->val$nextState:I

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$6;->val$scanId:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$6;->val$timeout:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 6783
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$6;->val$nextState:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6784
    .local v0, msg:Landroid/os/Message;
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$6;->val$scanId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 6785
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$6;->val$timeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6786
    return-void
.end method
