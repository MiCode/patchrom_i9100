.class public Landroid/app/IrdaManager;
.super Ljava/lang/Object;
.source "IrdaManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IrdaManager"


# instance fields
.field private final mService:Landroid/app/IIrdaService;

.field private read_ir_send:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/IIrdaService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/app/IrdaManager;->mService:Landroid/app/IIrdaService;

    .line 45
    return-void
.end method


# virtual methods
.method public read_irsend()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    const-string v1, ""

    iput-object v1, p0, Landroid/app/IrdaManager;->read_ir_send:Ljava/lang/String;

    .line 61
    :try_start_0
    const-string v1, "IrdaManager"

    const-string v2, "IrdaManager : read_irsend."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Landroid/app/IrdaManager;->mService:Landroid/app/IIrdaService;

    invoke-interface {v1}, Landroid/app/IIrdaService;->read_irsend()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/IrdaManager;->read_ir_send:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    iget-object v1, p0, Landroid/app/IrdaManager;->read_ir_send:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v1, p0, Landroid/app/IrdaManager;->read_ir_send:Ljava/lang/String;

    goto :goto_0
.end method

.method public write_irsend(Ljava/lang/String;)V
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    const-string v1, "IrdaManager"

    const-string v2, "IrdaManager : write_irsend."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v1, p0, Landroid/app/IrdaManager;->mService:Landroid/app/IIrdaService;

    invoke-interface {v1, p1}, Landroid/app/IIrdaService;->write_irsend(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method
