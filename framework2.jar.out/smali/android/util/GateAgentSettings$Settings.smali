.class public Landroid/util/GateAgentSettings$Settings;
.super Ljava/lang/Object;
.source "GateAgentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/GateAgentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public filter:Ljava/lang/String;

.field public gateLoggerEnabled:Z

.field public lcdTextOn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v0, p0, Landroid/util/GateAgentSettings$Settings;->gateLoggerEnabled:Z

    .line 59
    iput-boolean v0, p0, Landroid/util/GateAgentSettings$Settings;->lcdTextOn:Z

    .line 60
    const-string v0, "GATE"

    iput-object v0, p0, Landroid/util/GateAgentSettings$Settings;->filter:Ljava/lang/String;

    return-void
.end method
