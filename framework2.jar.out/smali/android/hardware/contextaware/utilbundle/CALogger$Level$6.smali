.class final enum Landroid/hardware/contextaware/utilbundle/CALogger$Level$6;
.super Landroid/hardware/contextaware/utilbundle/CALogger$Level;
.source "CALogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/CALogger$Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/utilbundle/CALogger$Level;-><init>(Ljava/lang/String;ILandroid/hardware/contextaware/utilbundle/CALogger$1;)V

    return-void
.end method


# virtual methods
.method consoleLogging(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 169
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->access$200()I

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CALogger$Level$6;->ordinal()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 171
    .local v0, usable:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 172
    const-string v1, "CA"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    return-void

    .line 169
    .end local v0           #usable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method fileLogging(Ljava/lang/String;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 178
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->access$200()I

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CALogger$Level$6;->ordinal()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 180
    .local v0, usable:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/FileLogger;->getInstance()Landroid/hardware/contextaware/utilbundle/FileLogger;

    move-result-object v1

    const-string v2, "CALogger"

    const-string v3, "X"

    const-string v4, "CA"

    const-string v5, ""

    #calls: Landroid/hardware/contextaware/utilbundle/CALogger;->getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, p1}, Landroid/hardware/contextaware/utilbundle/CALogger;->access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/utilbundle/FileLogger;->logging(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    return-void

    .line 178
    .end local v0           #usable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
