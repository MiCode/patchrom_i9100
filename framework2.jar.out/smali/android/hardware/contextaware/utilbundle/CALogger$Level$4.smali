.class final enum Landroid/hardware/contextaware/utilbundle/CALogger$Level$4;
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
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/utilbundle/CALogger$Level;-><init>(Ljava/lang/String;ILandroid/hardware/contextaware/utilbundle/CALogger$1;)V

    return-void
.end method


# virtual methods
.method consoleLogging(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 125
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->access$200()I

    move-result v2

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CALogger$Level$4;->ordinal()I

    move-result v3

    if-gt v2, v3, :cond_1

    move v0, v1

    .line 127
    .local v0, usable:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 128
    const-string v2, "CA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #calls: Landroid/hardware/contextaware/utilbundle/CALogger$Level;->getCallerInfo(Z)Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->access$300(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    return-void

    .line 125
    .end local v0           #usable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method fileLogging(Ljava/lang/String;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 134
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->access$200()I

    move-result v2

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CALogger$Level$4;->ordinal()I

    move-result v3

    if-gt v2, v3, :cond_1

    move v0, v1

    .line 136
    .local v0, usable:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/FileLogger;->getInstance()Landroid/hardware/contextaware/utilbundle/FileLogger;

    move-result-object v2

    const-string v3, "CALogger"

    const-string v4, "W"

    const-string v5, "CA"

    #calls: Landroid/hardware/contextaware/utilbundle/CALogger$Level;->getCallerInfo(Z)Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->access$300(Z)Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/hardware/contextaware/utilbundle/CALogger;->getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5, v1, p1}, Landroid/hardware/contextaware/utilbundle/CALogger;->access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/hardware/contextaware/utilbundle/FileLogger;->logging(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void

    .line 134
    .end local v0           #usable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
