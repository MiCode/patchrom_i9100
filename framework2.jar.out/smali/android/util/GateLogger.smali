.class public Landroid/util/GateLogger;
.super Ljava/lang/Object;
.source "GateLogger.java"


# static fields
.field public static final DEFAULT_GATE_TRACE_FILTER:Ljava/lang/String; = "GATE"

.field public static final GATE_DISABLED:Ljava/lang/String; = "com.sec.android.app.GateAgent.GATE_DISABLED"

.field public static final GATE_ENABLED:Ljava/lang/String; = "com.sec.android.app.GateAgent.GATE_ENABLED"

.field public static final GATE_LCDTEXT_OFF:Ljava/lang/String; = "com.sec.android.app.GateAgent.GATE_LCDTEXT_OFF"

.field public static final GATE_LCDTEXT_ON:Ljava/lang/String; = "com.sec.android.app.GateAgent.GATE_LCDTEXT_ON"

.field public static final GATE_TAG:Ljava/lang/String; = "GATE-M"

.field private static final GATE_TAG_BEGIN:Ljava/lang/String; = "<GATE-M>"

#the value of this static final field might be set in the static constructor
.field private static final GATE_TAG_BEGIN_LENGTH:I = 0x0

.field private static final GATE_TAG_END:Ljava/lang/String; = "</GATE-M>"

.field public static final GATE_TRACE_FILTER:Ljava/lang/String; = "GATE_TRACE_FILTER"

.field public static final LCDSTR_PREFIX:Ljava/lang/String; = "LCDSTR:"

.field private static final TAG:Ljava/lang/String; = "GATE"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGateEnabled:Z

.field private mGateTraceFilter:Ljava/lang/String;

.field private mIsDefaultTraceFilter:Z

.field private mLcdTextOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "<GATE-M>"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/util/GateLogger;->GATE_TAG_BEGIN_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v2, p0, Landroid/util/GateLogger;->mGateEnabled:Z

    .line 29
    iput-boolean v2, p0, Landroid/util/GateLogger;->mLcdTextOn:Z

    .line 30
    const-string v0, "GATE"

    iput-object v0, p0, Landroid/util/GateLogger;->mGateTraceFilter:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/GateLogger;->mIsDefaultTraceFilter:Z

    .line 42
    iput-object p1, p0, Landroid/util/GateLogger;->mContext:Landroid/content/Context;

    .line 46
    iput-boolean v2, p0, Landroid/util/GateLogger;->mGateEnabled:Z

    .line 47
    const-string v0, "GATE"

    iput-object v0, p0, Landroid/util/GateLogger;->mGateTraceFilter:Ljava/lang/String;

    .line 48
    const-string v0, "GATE"

    iget-object v1, p0, Landroid/util/GateLogger;->mGateTraceFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/util/GateLogger;->mIsDefaultTraceFilter:Z

    .line 49
    iput-boolean v2, p0, Landroid/util/GateLogger;->mLcdTextOn:Z

    .line 52
    const-string v0, "GATE_M_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Current settings: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/util/GateLogger;->mGateEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lcdTextOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/util/GateLogger;->mLcdTextOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/GateLogger;->mGateTraceFilter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method private gateLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 118
    const-string v0, "GATE"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method private getFilterTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "msg"

    .prologue
    .line 106
    const-string v3, "</GATE-M>"

    sget v4, Landroid/util/GateLogger;->GATE_TAG_BEGIN_LENGTH:I

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 108
    .local v1, idxEnd:I
    sget v3, Landroid/util/GateLogger;->GATE_TAG_BEGIN_LENGTH:I

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, stripped:Ljava/lang/String;
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 110
    .local v0, idx:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 114
    .end local v2           #stripped:Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v2       #stripped:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public isGateLoggerEnabled()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/util/GateLogger;->mGateEnabled:Z

    return v0
.end method

.method public isLcdTextOn()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/util/GateLogger;->mLcdTextOn:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 76
    iget-boolean v2, p0, Landroid/util/GateLogger;->mGateEnabled:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string v2, "<GATE-M>"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 81
    .local v1, idx:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 86
    const-string v2, "LCDSTR:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 87
    sget v2, Landroid/util/GateLogger;->GATE_TAG_BEGIN_LENGTH:I

    if-ne v1, v2, :cond_2

    iget-boolean v2, p0, Landroid/util/GateLogger;->mLcdTextOn:Z

    if-eqz v2, :cond_2

    .line 89
    invoke-direct {p0, p1}, Landroid/util/GateLogger;->gateLog(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_2
    iget-boolean v2, p0, Landroid/util/GateLogger;->mIsDefaultTraceFilter:Z

    if-eqz v2, :cond_3

    .line 95
    invoke-direct {p0, p1}, Landroid/util/GateLogger;->gateLog(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_3
    invoke-direct {p0, p1}, Landroid/util/GateLogger;->getFilterTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, ft:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/util/GateLogger;->mGateTraceFilter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-direct {p0, p1}, Landroid/util/GateLogger;->gateLog(Ljava/lang/String;)V

    goto :goto_0
.end method
