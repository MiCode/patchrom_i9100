.class Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;
.super Ljava/lang/Object;
.source "CameraSharingDeviceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

.field final synthetic val$mDeviceCount:I

.field final synthetic val$mDeviceData:[Lcom/samsung/shareshot/User;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;I[Lcom/samsung/shareshot/User;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    iput p2, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceCount:I

    iput-object p3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceData:[Lcom/samsung/shareshot/User;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 170
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceCount:I

    if-ge v1, v3, :cond_2

    .line 171
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    #getter for: Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->DeviceCheckStatus:[Z
    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->access$000(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_1

    .line 172
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceData:[Lcom/samsung/shareshot/User;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->onSelected()V

    .line 175
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceData:[Lcom/samsung/shareshot/User;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/shareshot/IShareShotService;->activateUser(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceData:[Lcom/samsung/shareshot/User;

    aget-object v4, v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera$UserWrapper;->selectUser(Lcom/samsung/shareshot/User;Z)V

    .line 194
    :cond_0
    :goto_2
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 195
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0xcf

    iput v3, v2, Landroid/os/Message;->what:I

    .line 196
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 182
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    #getter for: Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->DeviceCheckStatus:[Z
    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->access$000(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceData:[Lcom/samsung/shareshot/User;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->onUnSelected()V

    .line 186
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceData:[Lcom/samsung/shareshot/User;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/shareshot/IShareShotService;->cancelActivateUser(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->val$mDeviceData:[Lcom/samsung/shareshot/User;

    aget-object v4, v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera$UserWrapper;->selectUser(Lcom/samsung/shareshot/User;Z)V

    goto :goto_2

    .line 187
    :catch_1
    move-exception v0

    .line 189
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 198
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;->this$0:Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->dismiss()V

    .line 199
    return-void
.end method
