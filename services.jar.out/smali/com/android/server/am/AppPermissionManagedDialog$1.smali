.class Lcom/android/server/am/AppPermissionManagedDialog$1;
.super Ljava/lang/Object;
.source "AppPermissionManagedDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPermissionManagedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPermissionManagedDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPermissionManagedDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    invoke-static {p2}, Landroid/app/ICMDialogMessageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ICMDialogMessageManager;

    move-result-object v2

    #setter for: Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v1, v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$002(Lcom/android/server/am/AppPermissionManagedDialog;Landroid/app/ICMDialogMessageManager;)Landroid/app/ICMDialogMessageManager;

    .line 72
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v1}, Lcom/android/server/am/AppPermissionManagedDialog;->access$000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/app/ICMDialogMessageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I
    invoke-static {v1}, Lcom/android/server/am/AppPermissionManagedDialog;->access$100(Lcom/android/server/am/AppPermissionManagedDialog;)I

    move-result v1

    if-nez v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/app/ICMDialogMessageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/ICMDialogMessageManager;->getPermissionAlertDialogTitle()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$202(Lcom/android/server/am/AppPermissionManagedDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/app/ICMDialogMessageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/AppPermissionManagedDialog;->access$400(Lcom/android/server/am/AppPermissionManagedDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mPermissions:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/AppPermissionManagedDialog;->access$500(Lcom/android/server/am/AppPermissionManagedDialog;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/app/ICMDialogMessageManager;->getPermissionAlertDialogMessage(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$302(Lcom/android/server/am/AppPermissionManagedDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/am/AppPermissionManagedDialog;->access$600(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$600(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I
    invoke-static {v1}, Lcom/android/server/am/AppPermissionManagedDialog;->access$100(Lcom/android/server/am/AppPermissionManagedDialog;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/app/ICMDialogMessageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/ICMDialogMessageManager;->getPermissionErrorDialogTitle()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$202(Lcom/android/server/am/AppPermissionManagedDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/app/ICMDialogMessageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/AppPermissionManagedDialog;->access$400(Lcom/android/server/am/AppPermissionManagedDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/AppPermissionManagedDialog;->access$700(Lcom/android/server/am/AppPermissionManagedDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/app/ICMDialogMessageManager;->getPermissionErrorDialogMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$302(Lcom/android/server/am/AppPermissionManagedDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/am/AppPermissionManagedDialog;->access$600(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    #getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$600(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;
    invoke-static {v0, v1}, Lcom/android/server/am/AppPermissionManagedDialog;->access$002(Lcom/android/server/am/AppPermissionManagedDialog;Landroid/app/ICMDialogMessageManager;)Landroid/app/ICMDialogMessageManager;

    .line 94
    return-void
.end method
