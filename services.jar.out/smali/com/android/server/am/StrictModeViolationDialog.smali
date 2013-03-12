.class Lcom/android/server/am/StrictModeViolationDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "StrictModeViolationDialog.java"


# static fields
.field static final ACTION_OK:I = 0x0

.field static final ACTION_OK_AND_REPORT:I = 0x1

.field static final DISMISS_TIMEOUT:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "StrictModeViolationDialog"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 9
    .parameter "context"
    .parameter "result"
    .parameter "app"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v4, Lcom/android/server/am/StrictModeViolationDialog$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/StrictModeViolationDialog$1;-><init>(Lcom/android/server/am/StrictModeViolationDialog;)V

    iput-object v4, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 52
    .local v2, res:Landroid/content/res/Resources;
    iput-object p3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 53
    iput-object p2, p0, Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 55
    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v4, v8, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, name:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 57
    const v4, 0x10404e5

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

    invoke-virtual {p0, v4}, Lcom/android/server/am/StrictModeViolationDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 67
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/server/am/StrictModeViolationDialog;->setCancelable(Z)V

    .line 69
    const/4 v4, -0x1

    const v5, 0x1040558

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/StrictModeViolationDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 73
    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, rp:Landroid/app/enterprise/RestrictionPolicy;
    const-string v4, "enterprise_policy"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 78
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 81
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isGoogleCrashReportAllowed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    const/4 v4, -0x2

    const v5, 0x10404dc

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/StrictModeViolationDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 91
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3           #rp:Landroid/app/enterprise/RestrictionPolicy;
    :cond_1
    const v4, 0x10404d3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/StrictModeViolationDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/server/am/StrictModeViolationDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x4000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/server/am/StrictModeViolationDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Strict Mode Violation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v4, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/32 v6, 0xea60

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 99
    return-void

    .line 61
    .end local v1           #name:Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 62
    .restart local v1       #name:Ljava/lang/CharSequence;
    const v4, 0x10404e6

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/StrictModeViolationDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method
