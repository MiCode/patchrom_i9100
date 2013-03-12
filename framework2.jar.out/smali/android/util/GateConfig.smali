.class public final Landroid/util/GateConfig;
.super Ljava/lang/Object;
.source "GateConfig.java"


# static fields
.field public static final GATE_INTENT_V1_ACTION:Ljava/lang/String; = "com.sec.android.app.GateAgent.GATE_CONFIG"

.field public static final GATE_INTENT_V1_EXTRA_GATE_ENABLED:Ljava/lang/String; = "GATE_ENABLED"

.field public static final GATE_INTENT_V1_EXTRA_LCDTEXT_ENABLED:Ljava/lang/String; = "GATE_LCDTEXT_ENABLED"

.field public static final GATE_INTENT_V1_EXTRA_TRACE_TAG:Ljava/lang/String; = "GATE_TRACE_TAG"

.field public static final GATE_INTENT_V2_ACTION:Ljava/lang/String; = "com.sec.android.gate.GATE"

.field public static final GATE_INTENT_V2_EXTRA_ENABLED:Ljava/lang/String; = "ENABLED"

.field public static final GATE_V1_SYS_PROP_GATE_ENABLED:Ljava/lang/String; = "service.gate.enabled"

.field public static final GATE_V1_SYS_PROP_LCDTEXT_ENABLED:Ljava/lang/String; = "service.gate.lcdtexton"

.field public static final GATE_V1_SYS_PROP_TRACE_FILTER:Ljava/lang/String; = "service.gate.filter"

.field public static final GATE_V2_SYS_PROP_GATE_ENABLED:Ljava/lang/String; = "service.gate.enabled"

.field public static final GATE_V2_SYS_PROP_LCDTEXT_ENABLED:Ljava/lang/String; = "service.gate.lcdtexton"

.field public static final GATE_VERSION_1:I = 0x1

.field public static final GATE_VERSION_2:I = 0x2

.field public static final GATE_VERSION_LATEST:I = 0x2

.field public static final LCDTEXT_INTENT_V2_ACTION:Ljava/lang/String; = "com.sec.android.gate.LCDTEXT"

.field public static final LCDTEXT_INTENT_V2_EXTRA_ENABLED:Ljava/lang/String; = "ENABLED"

.field private static final LOG_TAG:Ljava/lang/String; = "GATE"

.field private static sGateEnabled:Z

.field private static sGateLcdtextEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Landroid/util/GateConfig;->sGateEnabled:Z

    .line 52
    sput-boolean v0, Landroid/util/GateConfig;->sGateLcdtextEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGateEnabled()Z
    .locals 2

    .prologue
    .line 70
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "service.gate.enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Landroid/util/GateConfig;->sGateEnabled:Z

    goto :goto_0
.end method

.method public static isGateLcdtextEnabled()Z
    .locals 2

    .prologue
    .line 81
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "service.gate.lcdtexton"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Landroid/util/GateConfig;->sGateLcdtextEnabled:Z

    goto :goto_0
.end method

.method public static setGateEnabled(Z)V
    .locals 3
    .parameter "gateEnabled"

    .prologue
    .line 55
    sput-boolean p0, Landroid/util/GateConfig;->sGateEnabled:Z

    .line 57
    const-string v0, "GATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GateConfig.setGateEnabled. GATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/util/GateConfig;->sGateEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", LCDTEXT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/util/GateConfig;->sGateLcdtextEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public static setGateLcdtextEnabled(Z)V
    .locals 3
    .parameter "lcdTextEnabled"

    .prologue
    .line 61
    sput-boolean p0, Landroid/util/GateConfig;->sGateLcdtextEnabled:Z

    .line 63
    const-string v0, "GATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GateConfig.setGateLcdtextEnabled. GATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/util/GateConfig;->sGateEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", LCDTEXT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/util/GateConfig;->sGateLcdtextEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method
