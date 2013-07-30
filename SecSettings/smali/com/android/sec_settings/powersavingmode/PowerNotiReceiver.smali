.class public Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotiReceiver.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private doCpuPowersaving()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 105
    iget-object v8, p0, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 108
    .local v4, mPowerManager:Landroid/os/PowerManager;
    iget-object v8, p0, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "psm_cpu_clock"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v12, :cond_4

    .line 109
    invoke-virtual {v4}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v8

    if-eqz v8, :cond_3

    .line 111
    invoke-virtual {v4}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v8

    aget v5, v8, v10

    .line 112
    .local v5, max_cpu_clock:I
    int-to-double v8, v5

    const-wide v10, 0x3fe6666666666666L

    mul-double/2addr v8, v10

    double-to-long v2, v8

    .line 113
    .local v2, limit_cpu_clock:J
    move v6, v5

    .line 114
    .local v6, set_cpu_clock:I
    const-string v8, "PowerNotiReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "max_cpu_clock : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", limit_cpu_clock : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v8

    array-length v8, v8

    if-ge v1, v8, :cond_0

    .line 116
    invoke-virtual {v4}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v8

    aget v0, v8, v1

    .line 117
    .local v0, current_matrix_cpu:I
    const-string v8, "PowerNotiReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current_matrix_cpu : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    int-to-long v8, v0

    cmp-long v8, v8, v2

    if-gez v8, :cond_2

    .line 119
    invoke-virtual {v4}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v8

    add-int/lit8 v9, v1, -0x1

    aget v7, v8, v9

    .line 120
    .local v7, upper_matrix_cpu:I
    int-to-long v8, v7

    sub-long/2addr v8, v2

    int-to-long v10, v0

    sub-long v10, v2, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 121
    const-string v8, "PowerNotiReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current_matrix_cpu ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] is set as set_cpu_clock"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    move v6, v0

    .line 130
    .end local v0           #current_matrix_cpu:I
    .end local v7           #upper_matrix_cpu:I
    :cond_0
    :goto_1
    const-string v8, "PowerNotiReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doAction : doCpuPowersaving , set_cpu_clock is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v8, 0x2

    const-string v9, "PowerNotiReceiver"

    invoke-virtual {v4, v8, v6, v12, v9}, Landroid/os/PowerManager;->acquirePersistentDVFSLock(IIILjava/lang/String;)V

    .line 141
    .end local v1           #i:I
    .end local v2           #limit_cpu_clock:J
    .end local v5           #max_cpu_clock:I
    .end local v6           #set_cpu_clock:I
    :goto_2
    return-void

    .line 124
    .restart local v0       #current_matrix_cpu:I
    .restart local v1       #i:I
    .restart local v2       #limit_cpu_clock:J
    .restart local v5       #max_cpu_clock:I
    .restart local v6       #set_cpu_clock:I
    .restart local v7       #upper_matrix_cpu:I
    :cond_1
    const-string v8, "PowerNotiReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "upper_matrix_cpu ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] is set as set_cpu_clock"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    move v6, v7

    .line 127
    goto :goto_1

    .line 115
    .end local v7           #upper_matrix_cpu:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 135
    .end local v0           #current_matrix_cpu:I
    .end local v1           #i:I
    .end local v2           #limit_cpu_clock:J
    .end local v5           #max_cpu_clock:I
    .end local v6           #set_cpu_clock:I
    :cond_3
    const-string v8, "PowerNotiReceiver"

    const-string v9, "error : mPowerManager.getSupportedFrequency() == null"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 138
    :cond_4
    const-string v8, "PowerNotiReceiver"

    const-string v9, "[PSM_CPU] , do not change CPU clock because PSM_CPU is unchecked"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0}, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->restoreCpuPowersaving()V

    goto :goto_2
.end method

.method private doDisplayPowersaving()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 151
    iget-object v2, p0, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_display"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 153
    .local v1, mPowerManager:Landroid/os/PowerManager;
    const-string v2, "PowerNotiReceiver"

    const-string v3, "doAction : doDisplayPowersaving"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 156
    .local v0, dvfsLockIntent:Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.DVFS_LCD_FRAME_RATE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v2, "RATE"

    const-string v3, "40"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v2, "PACKAGE"

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v2, p0, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    invoke-virtual {v1, v5}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 170
    .end local v0           #dvfsLockIntent:Landroid/content/Intent;
    .end local v1           #mPowerManager:Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 167
    :cond_0
    const-string v2, "PowerNotiReceiver"

    const-string v3, "[PSM_DISPLAY] , do not change UI rendering and brightness because PSM_DISPLAY is unchecked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0}, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->restoreDisplayPowersaving()V

    goto :goto_0
.end method

.method private doPowerSaveAction()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->doCpuPowersaving()V

    .line 94
    invoke-direct {p0}, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->doDisplayPowersaving()V

    .line 96
    return-void
.end method

.method private restoreCpuPowersaving()V
    .locals 3

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 146
    .local v0, mPowerManager:Landroid/os/PowerManager;
    const-string v1, "PowerNotiReceiver"

    const-string v2, "restoreCpuPowersaving"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->releasePersistentDVFSLock(I)V

    .line 148
    return-void
.end method

.method private restoreDisplayPowersaving()V
    .locals 4

    .prologue
    .line 173
    iget-object v2, p0, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 174
    .local v1, mPowerManager:Landroid/os/PowerManager;
    const-string v2, "PowerNotiReceiver"

    const-string v3, "restoreDisplayPowersaving"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v0, dvfsLockIntent:Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.DVFS_LCD_FRAME_RATE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v2, "RATE"

    const-string v3, "60"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v2, "PACKAGE"

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v2, p0, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 187
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 188
    return-void
.end method

.method private restorePowerSaveAction()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->restoreCpuPowersaving()V

    .line 100
    invoke-direct {p0}, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->restoreDisplayPowersaving()V

    .line 102
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const v7, 0x7f0909af

    const/4 v6, 0x1

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, action:Ljava/lang/String;
    iput-object p1, p0, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    .line 49
    iget-object v3, p0, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 50
    iget-object v3, p0, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_switch"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 51
    .local v1, powersavingState:I
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "powersavingState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    if-ne v1, v6, :cond_0

    .line 54
    iget-object v3, p0, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 56
    invoke-direct {p0}, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v3, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    if-ne v1, v6, :cond_4

    .line 61
    const-string v3, "changed"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, strMsg:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 63
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive POWERSAVING_CHANGED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v3, p0, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 67
    invoke-direct {p0}, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    goto :goto_0

    .line 69
    :cond_2
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive POWERSAVING_CHANGED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_3
    iget-object v3, p0, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 74
    invoke-direct {p0}, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    goto :goto_0

    .line 77
    .end local v2           #strMsg:Ljava/lang/String;
    :cond_4
    const-string v3, "changed"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .restart local v2       #strMsg:Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 79
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 80
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive POWERSAVING_CHANGED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_0

    .line 83
    :cond_5
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive POWERSAVING_CHANGED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 86
    :cond_6
    invoke-direct {p0}, Lcom/android/sec_settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_0
.end method
