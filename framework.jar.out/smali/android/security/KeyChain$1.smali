.class final Landroid/security/KeyChain$1;
.super Ljava/lang/Object;
.source "KeyChain.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field volatile mConnectedAtLeastOnce:Z

.field final synthetic val$q:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Landroid/security/KeyChain$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 419
    iget-boolean v0, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    .line 422
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyChain$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p2}, Landroid/security/IKeyChainService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 428
    return-void
.end method
