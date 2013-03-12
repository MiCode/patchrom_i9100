.class Lcom/sec/android/ims/IMSManager$ServiceSender;
.super Ljava/lang/Object;
.source "IMSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/ims/IMSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/ims/IMSManager;


# direct methods
.method constructor <init>(Lcom/sec/android/ims/IMSManager;)V
    .locals 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sec/android/ims/IMSManager$ServiceSender;->this$0:Lcom/sec/android/ims/IMSManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const-string v0, "IMSManager"

    const-string v1, "IMS ServiceSender"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 148
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 149
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager$ServiceSender;->this$0:Lcom/sec/android/ims/IMSManager;

    new-instance v2, Lcom/sec/android/ims/IMSManager$ManagerHandler;

    iget-object v3, p0, Lcom/sec/android/ims/IMSManager$ServiceSender;->this$0:Lcom/sec/android/ims/IMSManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sec/android/ims/IMSManager$ManagerHandler;-><init>(Lcom/sec/android/ims/IMSManager;Lcom/sec/android/ims/IMSManager$1;)V

    iput-object v2, v1, Lcom/sec/android/ims/IMSManager;->mHandler:Lcom/sec/android/ims/IMSManager$ManagerHandler;

    .line 150
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, tr:Ljava/lang/Throwable;
    const-string v1, "IMSManager"

    const-string v2, "Uncaught exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    return-void
.end method
