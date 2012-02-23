.class public Lcom/android/server/GateLoggerSettingsService;
.super Landroid/util/IGateLoggerSettingsService$Stub;
.source "GateLoggerSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GateLoggerSettingsService$1;,
        Lcom/android/server/GateLoggerSettingsService$NativeListener;
    }
.end annotation


# static fields
.field private static sFilter:Ljava/lang/String;

.field private static sGateEnabled:Z

.field private static sLcdTextOn:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/util/IGateLoggerSettingsService$Stub;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/server/GateLoggerSettingsService;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/GateLoggerSettingsService$NativeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/GateLoggerSettingsService$NativeListener;-><init>(Lcom/android/server/GateLoggerSettingsService;Lcom/android/server/GateLoggerSettingsService$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    return-void
.end method

.method private static getSystemDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 150
    .local v0, dataDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    .local v1, systemDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 152
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getGateFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/server/GateLoggerSettingsService;->sFilter:Ljava/lang/String;

    return-object v0
.end method

.method public isGateLoggerEnabled()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/android/server/GateLoggerSettingsService;->sGateEnabled:Z

    return v0
.end method

.method public isLcdTextOn()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/server/GateLoggerSettingsService;->sLcdTextOn:Z

    return v0
.end method

.method public processCmd(Ljava/lang/String;)V
    .locals 4
    .parameter "Str"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    const-string v1, "GATE_OFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 115
    sput-boolean v2, Lcom/android/server/GateLoggerSettingsService;->sGateEnabled:Z

    .line 116
    const-string v1, "NativeListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCmd::sGateEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/GateLoggerSettingsService;->sGateEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.GateAgent.GATE_CONFIG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "GATE_ENABLED"

    sget-boolean v2, Lcom/android/server/GateLoggerSettingsService;->sGateEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    const-string v1, "GATE_LCDTEXT_ENABLED"

    sget-boolean v2, Lcom/android/server/GateLoggerSettingsService;->sLcdTextOn:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    const-string v1, "GATE_TRACE_TAG"

    const-string v2, "GATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/android/server/GateLoggerSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    const-string v1, "NativeListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCmd::sGateEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/GateLoggerSettingsService;->sGateEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Str="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 118
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "GATE_ON"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 119
    sput-boolean v3, Lcom/android/server/GateLoggerSettingsService;->sGateEnabled:Z

    .line 120
    const-string v1, "NativeListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCmd::sGateEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/GateLoggerSettingsService;->sGateEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_2
    const-string v1, "GATE_LCDSTR_OFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 123
    sput-boolean v2, Lcom/android/server/GateLoggerSettingsService;->sLcdTextOn:Z

    .line 124
    const-string v1, "NativeListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCmd::sGateEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/GateLoggerSettingsService;->sGateEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 126
    :cond_3
    const-string v1, "GATE_LCDSTR_ON"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 127
    sput-boolean v3, Lcom/android/server/GateLoggerSettingsService;->sLcdTextOn:Z

    .line 128
    const-string v1, "NativeListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCmd::sGateEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/GateLoggerSettingsService;->sGateEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public saveGateSettings(ZZLjava/lang/String;)V
    .locals 0
    .parameter "gateLoggerEnabled"
    .parameter "lcdTextOn"
    .parameter "filter"

    .prologue
    .line 143
    sput-boolean p1, Lcom/android/server/GateLoggerSettingsService;->sGateEnabled:Z

    .line 144
    sput-boolean p2, Lcom/android/server/GateLoggerSettingsService;->sLcdTextOn:Z

    .line 145
    sput-object p3, Lcom/android/server/GateLoggerSettingsService;->sFilter:Ljava/lang/String;

    .line 146
    return-void
.end method
