.class public Landroid/util/GateAgentSettings;
.super Ljava/lang/Object;
.source "GateAgentSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/GateAgentSettings$Settings;,
        Landroid/util/GateAgentSettings$GateLoggerSettingsServiceConnection;
    }
.end annotation


# static fields
.field public static final DEFAULT_GATE_TRACE_FILTER:Ljava/lang/String; = "GATE"

.field public static final GATE_CONFIG:Ljava/lang/String; = "com.sec.android.app.GateAgent.GATE_CONFIG"

.field public static final GATE_ENABLED:Ljava/lang/String; = "GATE_ENABLED"

.field public static final GATE_LCDTEXT_ENABLED:Ljava/lang/String; = "GATE_LCDTEXT_ENABLED"

.field public static final GATE_TRACE_TAG:Ljava/lang/String; = "GATE_TRACE_TAG"

.field private static final TAG:Ljava/lang/String; = "GateAgentSettings"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getGateSettings(Landroid/content/Context;)Landroid/util/GateAgentSettings$Settings;
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    invoke-static {p0}, Landroid/util/GateAgentSettings;->getSettingsFromService(Landroid/content/Context;)Landroid/util/GateAgentSettings$Settings;

    move-result-object v0

    return-object v0
.end method

.method private static getSettingsFromService(Landroid/content/Context;)Landroid/util/GateAgentSettings$Settings;
    .locals 6
    .parameter "context"

    .prologue
    .line 64
    const-string v4, "GateAgentSettings"

    const-string v5, "getSettingsFromService"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v3, 0x0

    .line 67
    .local v3, srv:Landroid/util/IGateLoggerSettingsService;
    const-string v4, "gateloggersettings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 69
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 70
    const-string v4, "GateAgentSettings"

    const-string v5, "ServiceManager.getService(\"gateloggersettings\") returned null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    new-instance v2, Landroid/util/GateAgentSettings$Settings;

    invoke-direct {v2}, Landroid/util/GateAgentSettings$Settings;-><init>()V

    .line 76
    .local v2, settings:Landroid/util/GateAgentSettings$Settings;
    if-nez v3, :cond_1

    .line 77
    const-string v4, "GateAgentSettings"

    const-string v5, "Failed to start service, use default settings"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_1
    return-object v2

    .line 72
    .end local v2           #settings:Landroid/util/GateAgentSettings$Settings;
    :cond_0
    invoke-static {v0}, Landroid/util/IGateLoggerSettingsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/util/IGateLoggerSettingsService;

    move-result-object v3

    goto :goto_0

    .line 81
    .restart local v2       #settings:Landroid/util/GateAgentSettings$Settings;
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/util/IGateLoggerSettingsService;->isGateLoggerEnabled()Z

    move-result v4

    iput-boolean v4, v2, Landroid/util/GateAgentSettings$Settings;->gateLoggerEnabled:Z

    .line 82
    invoke-interface {v3}, Landroid/util/IGateLoggerSettingsService;->isLcdTextOn()Z

    move-result v4

    iput-boolean v4, v2, Landroid/util/GateAgentSettings$Settings;->lcdTextOn:Z

    .line 83
    invoke-interface {v3}, Landroid/util/IGateLoggerSettingsService;->getGateFilter()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/util/GateAgentSettings$Settings;->filter:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "GateAgentSettings"

    const-string v5, "getSettingsFromService"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static saveGateSettings(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 7
    .parameter "context"
    .parameter "gateEnabled"
    .parameter "filter"
    .parameter "lcdTextOn"

    .prologue
    .line 95
    const/4 v3, 0x0

    .line 96
    .local v3, srv:Landroid/util/IGateLoggerSettingsService;
    const-string v4, "gateloggersettings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 98
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 99
    const-string v4, "GateAgentSettings"

    const-string v5, "ServiceManager.getService(\"gateloggersettings\") returned null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    if-nez v3, :cond_1

    .line 105
    const-string v4, "GateAgentSettings"

    const-string v5, "Failed to start service, settings not saved"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.GateAgent.GATE_CONFIG"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "GATE_ENABLED"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    const-string v4, "GATE_LCDTEXT_ENABLED"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    const-string v4, "GATE_TRACE_TAG"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    return-void

    .line 101
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    invoke-static {v0}, Landroid/util/IGateLoggerSettingsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/util/IGateLoggerSettingsService;

    move-result-object v3

    goto :goto_0

    .line 108
    :cond_1
    :try_start_0
    invoke-interface {v3, p1, p3, p2}, Landroid/util/IGateLoggerSettingsService;->saveGateSettings(ZZLjava/lang/String;)V

    .line 109
    const-string v4, "GATE_M_LOG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GATE Config Saved : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "GateAgentSettings"

    const-string v5, "saveGateSettings"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
