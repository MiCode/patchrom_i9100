.class Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppErrorDialog.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final DISMISS_TIMEOUT:J = 0x0L

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_REPORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppErrorDialog"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_DisableForceClosePopup"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 54
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/AppErrorDialog;->DISMISS_TIMEOUT:J

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/android/server/am/AppErrorDialog;->DISMISS_TIMEOUT:J

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 9
    .parameter "context"
    .parameter "result"
    .parameter "app"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v4, Lcom/android/server/am/AppErrorDialog$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 63
    const-string v4, "-k -t -z -d -o /data/log/dumpstate_app_error"

    invoke-static {v4}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 67
    .local v2, res:Landroid/content/res/Resources;
    iput-object p3, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 68
    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 70
    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v4, v8, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, name:Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 72
    const v4, 0x10404d4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    .line 84
    const/4 v4, -0x1

    const v5, 0x10404db

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 88
    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 90
    const/4 v3, 0x0

    .line 91
    .local v3, rp:Landroid/app/enterprise/RestrictionPolicy;
    const-string v4, "enterprise_policy"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 93
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 96
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isGoogleCrashReportAllowed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    const/4 v4, -0x2

    const v5, 0x10404dc

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 106
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3           #rp:Landroid/app/enterprise/RestrictionPolicy;
    :cond_1
    const v4, 0x10404d3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x4000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    iget-boolean v4, p3, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v4, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 114
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    sget-wide v6, Lcom/android/server/am/AppErrorDialog;->DISMISS_TIMEOUT:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 117
    return-void

    .line 76
    .end local v1           #name:Ljava/lang/CharSequence;
    :cond_3
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 77
    .restart local v1       #name:Ljava/lang/CharSequence;
    const v4, 0x10404d5

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method
