.class public Landroid/app/BarBeamCommandImpl;
.super Ljava/lang/Object;
.source "BarBeamCommandImpl.java"

# interfaces
.implements Landroid/app/BarBeamCommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    }
.end annotation


# static fields
.field private static final hopSize:I = 0x7


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mService:Landroid/app/IBarBeamService;

.field private final sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/IBarBeamService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "BarBeamCommandImpl"

    iput-object v0, p0, Landroid/app/BarBeamCommandImpl;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    .line 49
    const-string v0, "BarBeamCommandImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BarBeamCommandImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method


# virtual methods
.method public addListener(Landroid/app/BarBeamListener;)V
    .locals 8
    .parameter "listener"

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget-object v5, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 56
    :try_start_0
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 57
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 58
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;

    .line 59
    .local v2, l:Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    invoke-virtual {v2}, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;->getBarBeamListener()Landroid/app/BarBeamListener;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 60
    const-string v4, "BarBeamCommandImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  .addListener : fail. already registered / listener count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", listener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    monitor-exit v5

    .line 77
    .end local v1           #i:I
    .end local v2           #l:Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    .end local v3           #size:I
    :cond_0
    :goto_1
    return-void

    .line 57
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    .restart local v3       #size:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v2           #l:Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    :cond_2
    new-instance v2, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;

    invoke-direct {v2, p0, p1}, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;-><init>(Landroid/app/BarBeamCommandImpl;Landroid/app/BarBeamListener;)V

    .line 66
    .restart local v2       #l:Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v4, v2}, Landroid/app/IBarBeamService;->addListener(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :goto_2
    :try_start_2
    const-string v4, "BarBeamCommandImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  .addListener : success. listener count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", listener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    monitor-exit v5

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #l:Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 69
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    .restart local v3       #size:I
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "BarBeamCommandImpl"

    const-string v6, "RemoteException in registerListener: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public getCurrentStatus()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v1, 0x1

    .line 144
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v2}, Landroid/app/IBarBeamService;->getCurrentStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    return v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Landroid/app/BarBeamException;

    const-string v3, "RemoteException in getCurrentStatus(): "

    invoke-direct {v2, v3, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isImplementationCompatible()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 206
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v2}, Landroid/app/IBarBeamService;->isImplementationCompatible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 211
    return v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Landroid/app/BarBeamException;

    const-string v3, "isImplementationCompatible in setBarcode: "

    invoke-direct {v2, v3, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public removeListener(Landroid/app/BarBeamListener;)V
    .locals 8
    .parameter "listener"

    .prologue
    .line 81
    iget-object v5, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 82
    :try_start_0
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 84
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 85
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 91
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;

    .line 92
    .local v2, l:Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    invoke-virtual {v2}, Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;->getBarBeamListener()Landroid/app/BarBeamListener;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 93
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    iget-object v4, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v4, v2}, Landroid/app/IBarBeamService;->removeListener(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    .end local v2           #l:Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    :cond_1
    :goto_2
    :try_start_2
    const-string v4, "BarBeamCommandImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  .removeListener : / listener count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/BarBeamCommandImpl;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", listener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    monitor-exit v5

    .line 106
    return-void

    .line 96
    .restart local v2       #l:Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "BarBeamCommandImpl"

    const-string v6, "RemoteException in removeListener : "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 104
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #l:Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 90
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/app/BarBeamCommandImpl$BarBeamListenerDelegate;
    .restart local v3       #size:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setBarcode([B)V
    .locals 3
    .parameter "barcode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 189
    const-string v1, "BarBeamCommandImpl"

    const-string v2, "sendDataTable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :try_start_0
    iget-object v1, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v1, p1}, Landroid/app/IBarBeamService;->setBarcode([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "RemoteException in setBarcode: "

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setHopSequence([Landroid/app/Hop;)V
    .locals 6
    .parameter "hopSequence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 173
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x7

    new-array v2, v3, [B

    .line 174
    .local v2, tempbuffer:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 175
    aget-object v3, p1, v1

    mul-int/lit8 v4, v1, 0x7

    invoke-virtual {p0, v3, v2, v4}, Landroid/app/BarBeamCommandImpl;->writeHop2ByteArray(Landroid/app/Hop;[BI)I

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_0
    const-string v3, "BarBeamCommandImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendHopSequenceTable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_0
    iget-object v3, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    array-length v4, p1

    const/4 v5, 0x7

    invoke-interface {v3, v2, v4, v5}, Landroid/app/IBarBeamService;->setHopSequence([BII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Landroid/app/BarBeamException;

    const-string v4, "RemoteException in sendHopSequenceTable: "

    invoke-direct {v3, v4, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public startBeaming()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 110
    const-string v1, "BarBeamCommandImpl"

    const-string v2, "startBeaming"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_0
    iget-object v1, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v1}, Landroid/app/IBarBeamService;->startBeaming()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "RemoteException in startBarBeam: "

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startBeaming(I)V
    .locals 3
    .parameter "repeat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v1, "BarBeamCommandImpl"

    const-string v2, "startBeaming"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :try_start_0
    iget-object v1, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v1, p1}, Landroid/app/IBarBeamService;->startBeaming_repeat(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "RemoteException in startBeaming(repeat): "

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopBeaming()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation

    .prologue
    .line 132
    const-string v1, "BarBeamCommandImpl"

    const-string v2, "stopBeaming"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :try_start_0
    iget-object v1, p0, Landroid/app/BarBeamCommandImpl;->mService:Landroid/app/IBarBeamService;

    invoke-interface {v1}, Landroid/app/IBarBeamService;->stopBeaming()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Landroid/app/BarBeamException;

    const-string v2, "RemoteException in stopBarBeam(repeat): "

    invoke-direct {v1, v2, v0}, Landroid/app/BarBeamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected writeHop2ByteArray(Landroid/app/Hop;[BI)I
    .locals 2
    .parameter "hop"
    .parameter "buf"
    .parameter "offset"

    .prologue
    .line 161
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .local v0, offset:I
    iget v1, p1, Landroid/app/Hop;->barWidth:I

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 162
    add-int/lit8 p3, v0, 0x1

    .end local v0           #offset:I
    .restart local p3
    iget v1, p1, Landroid/app/Hop;->symbolCnt:I

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 163
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .restart local v0       #offset:I
    iget v1, p1, Landroid/app/Hop;->interSymbolDelay:I

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 164
    add-int/lit8 p3, v0, 0x1

    .end local v0           #offset:I
    .restart local p3
    iget v1, p1, Landroid/app/Hop;->interSymbolDelay:I

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 165
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .restart local v0       #offset:I
    iget v1, p1, Landroid/app/Hop;->packetCnt:I

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 166
    add-int/lit8 p3, v0, 0x1

    .end local v0           #offset:I
    .restart local p3
    iget v1, p1, Landroid/app/Hop;->interPacketDelay:I

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 167
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .restart local v0       #offset:I
    iget v1, p1, Landroid/app/Hop;->interPacketDelay:I

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 168
    const/4 v1, 0x7

    return v1
.end method
