.class public Landroid/app/BarBeamFactory;
.super Ljava/lang/Object;
.source "BarBeamFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BarBeamFactory"


# instance fields
.field private mbarbeamcmd:Landroid/app/BarBeamCommand;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    .line 36
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/BarBeamFactory;->getBarBeamCommand(Landroid/content/Context;)Landroid/app/BarBeamCommand;

    move-result-object v1

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;
    :try_end_0
    .catch Landroid/app/BarBeamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Landroid/app/BarBeamException;
    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;[Landroid/app/Hop;)V
    .locals 3
    .parameter "context"
    .parameter "HopSequencearray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    .line 44
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/BarBeamFactory;->getBarBeamCommand(Landroid/content/Context;)Landroid/app/BarBeamCommand;

    move-result-object v1

    iput-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;
    :try_end_0
    .catch Landroid/app/BarBeamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    if-eqz v1, :cond_0

    .line 51
    :try_start_1
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v1, p2}, Landroid/app/BarBeamCommand;->setHopSequence([Landroid/app/Hop;)V
    :try_end_1
    .catch Landroid/app/BarBeamException; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    :cond_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Landroid/app/BarBeamException;
    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    .line 47
    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "BarBeamException in getBarBeam :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 52
    .end local v0           #e:Landroid/app/BarBeamException;
    :catch_1
    move-exception v0

    .line 53
    .restart local v0       #e:Landroid/app/BarBeamException;
    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    .line 54
    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "BarBeamException in setHopSequence :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public StartBarBeamFactory([B)Z
    .locals 5
    .parameter "barcode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v2, 0x0

    .line 99
    .local v2, ret:Z
    :try_start_0
    iget-object v3, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v3, p1}, Landroid/app/BarBeamCommand;->setBarcode([B)V

    .line 100
    iget-object v3, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v3}, Landroid/app/BarBeamCommand;->startBeaming()V

    .line 101
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 104
    iget-object v3, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    check-cast v3, Landroid/app/BarBeamCommandImpl;

    invoke-virtual {v3}, Landroid/app/BarBeamCommandImpl;->getCurrentStatus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 105
    const/4 v2, 0x1

    .line 118
    :cond_0
    return v2

    .line 109
    :cond_1
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "BarBeamFactory"

    const-string v4, "Failed loading MobeamLED implementation: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    new-instance v3, Landroid/app/BarBeamException;

    const-string v4, "BarBeamException in setHopSequence :"

    invoke-direct {v3, v4, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 110
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v1       #i:I
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public StopBarBeamFactory()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v2, 0x0

    .line 128
    .local v2, ret:Z
    :try_start_0
    iget-object v3, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v3}, Landroid/app/BarBeamCommand;->stopBeaming()V

    .line 129
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 132
    iget-object v3, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    check-cast v3, Landroid/app/BarBeamCommandImpl;

    invoke-virtual {v3}, Landroid/app/BarBeamCommandImpl;->getCurrentStatus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 133
    const/4 v2, 0x1

    .line 145
    :cond_0
    return v2

    .line 137
    :cond_1
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "BarBeamFactory"

    const-string v4, "BarBeamException in getCurrentStatus: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    new-instance v3, Landroid/app/BarBeamException;

    const-string v4, "BarBeamException in getCurrentStatus :"

    invoke-direct {v3, v4, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 138
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v1       #i:I
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public getBarBeamCommand(Landroid/content/Context;)Landroid/app/BarBeamCommand;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    const-string v2, "barbeam"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BarBeamCommand;

    .line 67
    .local v1, m:Landroid/app/BarBeamCommand;
    invoke-interface {v1}, Landroid/app/BarBeamCommand;->isImplementationCompatible()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 68
    .end local v1           #m:Landroid/app/BarBeamCommand;
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "BarBeamFactory"

    const-string v3, "Failed loading MobeamLED implementation: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_0
    new-instance v2, Landroid/app/BarBeamException;

    const-string v3, "No implementaion found."

    invoke-direct {v2, v3}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setHopSequence([Landroid/app/Hop;)V
    .locals 3
    .parameter "HopSequence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    if-eqz v1, :cond_0

    .line 82
    :try_start_0
    iget-object v1, p0, Landroid/app/BarBeamFactory;->mbarbeamcmd:Landroid/app/BarBeamCommand;

    invoke-interface {v1, p1}, Landroid/app/BarBeamCommand;->setHopSequence([Landroid/app/Hop;)V
    :try_end_0
    .catch Landroid/app/BarBeamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Landroid/app/BarBeamException;
    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    .line 86
    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "BarBeamException in setHopSequence :"

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
