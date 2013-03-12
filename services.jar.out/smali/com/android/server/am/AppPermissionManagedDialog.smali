.class Lcom/android/server/am/AppPermissionManagedDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppPermissionManagedDialog.java"


# static fields
.field private static final CONTINUE:I = 0x0

.field private static final FORCE_QUIT:I = 0x1

.field private static final GETMSGBYAPP:I = 0x2

.field private static final TYPE_APPSTART_WARNING:I = 0x0

.field private static final TYPE_PERMISSION_ERROR:I = 0x1


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mCMAppName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialogType:I

.field private final mHandler:Landroid/os/Handler;

.field private mMessageByApp:Ljava/lang/String;

.field private mPermission:Ljava/lang/String;

.field private mPermissions:[Ljava/lang/String;

.field private mProc:Lcom/android/server/am/ProcessRecord;

.field private mResource:Landroid/content/res/Resources;

.field private mResult:Lcom/android/server/am/AppErrorResult;

.field private mService:Landroid/app/ICMDialogMessageManager;

.field private mTitleByApp:Ljava/lang/String;

.field private newIntent:Landroid/content/Intent;

.field private serviceConn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "result"
    .parameter "app"
    .parameter "permission"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    .line 51
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    .line 52
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    .line 53
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    .line 54
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 55
    const-string v5, "Permission manager"

    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    .line 56
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissions:[Ljava/lang/String;

    .line 57
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 58
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    .line 61
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 62
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 65
    iput-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;

    .line 66
    new-instance v5, Lcom/android/server/am/AppPermissionManagedDialog$1;

    invoke-direct {v5, p0}, Lcom/android/server/am/AppPermissionManagedDialog$1;-><init>(Lcom/android/server/am/AppPermissionManagedDialog;)V

    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;

    .line 222
    new-instance v5, Lcom/android/server/am/AppPermissionManagedDialog$2;

    invoke-direct {v5, p0}, Lcom/android/server/am/AppPermissionManagedDialog$2;-><init>(Lcom/android/server/am/AppPermissionManagedDialog;)V

    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    .line 148
    iput v8, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    .line 149
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    .line 152
    iput-object p3, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 153
    iput-object p2, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 155
    const/4 v4, 0x0

    .line 157
    .local v4, tmp_name:Ljava/lang/CharSequence;
    iget-object v5, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-ne v5, v8, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, name:Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 159
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, p4, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PermissionInfo;->labelRes:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.capabilitymanager"

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 163
    .local v0, CMInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v0           #CMInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x4000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 187
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const-string v6, "Error"

    invoke-virtual {v5, v6}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/AppPermissionManagedDialog;->setCancelable(Z)V

    .line 190
    const/4 v5, -0x1

    iget-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v7, 0x1040558

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/am/AppPermissionManagedDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 194
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessage()V

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.security.capabilitymanager.action.GET_DIALOGMESSAGE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, bindIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1, v5, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 198
    return-void

    .line 164
    .end local v1           #bindIntent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 165
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object p4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 166
    const-string v5, "Permission manager"

    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    .line 167
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #name:Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 172
    .restart local v3       #name:Ljava/lang/CharSequence;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, p4, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PermissionInfo;->labelRes:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.capabilitymanager"

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 176
    .restart local v0       #CMInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 178
    .end local v0           #CMInfo:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    .line 179
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object p4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 180
    const-string v5, "Permission manager"

    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    .line 181
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "packagename"
    .parameter "intent"
    .parameter "permissions"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    .line 51
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    .line 52
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    .line 53
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    .line 54
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 55
    const-string v4, "Permission manager"

    iput-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    .line 56
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissions:[Ljava/lang/String;

    .line 57
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    .line 58
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    .line 61
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 62
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 65
    iput-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;

    .line 66
    new-instance v4, Lcom/android/server/am/AppPermissionManagedDialog$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/AppPermissionManagedDialog$1;-><init>(Lcom/android/server/am/AppPermissionManagedDialog;)V

    iput-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;

    .line 222
    new-instance v4, Lcom/android/server/am/AppPermissionManagedDialog$2;

    invoke-direct {v4, p0}, Lcom/android/server/am/AppPermissionManagedDialog$2;-><init>(Lcom/android/server/am/AppPermissionManagedDialog;)V

    iput-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    .line 101
    iput v7, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    .line 102
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    .line 105
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    .line 106
    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    const-string v5, "sec_wdlg_newIntent_touch"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPermissionAlertDialogEnableType()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 111
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, p2}, Landroid/content/pm/IPackageManager;->updateManagedPermissionOfPackage(I[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    iput-object p4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissions:[Ljava/lang/String;

    .line 119
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 120
    .local v1, appinfo:Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 122
    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.capabilitymanager"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 123
    .local v0, CMInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .end local v0           #CMInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #appinfo:Landroid/content/pm/ApplicationInfo;
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x4000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-string v5, "Warning"

    invoke-virtual {v4, v5}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0, v7}, Lcom/android/server/am/AppPermissionManagedDialog;->setCancelable(Z)V

    .line 134
    const/4 v4, -0x1

    iget-object v5, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResource:Landroid/content/res/Resources;

    const v6, 0x104000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/AppPermissionManagedDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 138
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessage()V

    .line 140
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.security.capabilitymanager.action.GET_DIALOGMESSAGE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v2, bindIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2, v4, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 142
    return-void

    .line 113
    .end local v2           #bindIntent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 114
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 126
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object p2, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    .line 127
    const-string v4, "Permission manager"

    iput-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/app/ICMDialogMessageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/am/AppPermissionManagedDialog;Landroid/app/ICMDialogMessageManager;)Landroid/app/ICMDialogMessageManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mService:Landroid/app/ICMDialogMessageManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/am/AppPermissionManagedDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->serviceConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/AppPermissionManagedDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessageByApp()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/am/AppPermissionManagedDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/am/AppPermissionManagedDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/am/AppPermissionManagedDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/AppPermissionManagedDialog;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/AppPermissionManagedDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setTitleAndMessage()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    if-nez v0, :cond_2

    .line 206
    const-string v0, "Warning"

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " can be terminated suddenly. Because some of permission are managed by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nIf you want more detiled information, please go to the"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 208
    :cond_2
    iget v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 209
    const-string v0, "Error"

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission error. Permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is managed by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". If you want to be using this permission, please enable permission in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mCMAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". The application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is terminated."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setTitleAndMessageByApp()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mTitleByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/android/server/am/AppPermissionManagedDialog;->mMessageByApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionManagedDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 220
    :cond_0
    return-void
.end method
