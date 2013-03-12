.class Lcom/android/server/enterprise/SecurityPolicy$ResetKeyChain;
.super Landroid/os/AsyncTask;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetKeyChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/SecurityPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/SecurityPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/android/server/enterprise/SecurityPolicy$ResetKeyChain;->this$0:Lcom/android/server/enterprise/SecurityPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/SecurityPolicy;Lcom/android/server/enterprise/SecurityPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 737
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/SecurityPolicy$ResetKeyChain;-><init>(Lcom/android/server/enterprise/SecurityPolicy;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .parameter "unused"

    .prologue
    const/4 v3, 0x0

    .line 740
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/SecurityPolicy$ResetKeyChain;->this$0:Lcom/android/server/enterprise/SecurityPolicy;

    #getter for: Lcom/android/server/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/SecurityPolicy;->access$200(Lcom/android/server/enterprise/SecurityPolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 742
    .local v1, keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    invoke-interface {v2}, Landroid/security/IKeyChainService;->reset()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 746
    :try_start_2
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 750
    .end local v1           #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :goto_0
    return-object v2

    .line 743
    .restart local v1       #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :catch_0
    move-exception v0

    .line 744
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    :try_start_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 746
    :try_start_4
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 748
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v0

    .line 749
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 750
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 746
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 737
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/SecurityPolicy$ResetKeyChain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
