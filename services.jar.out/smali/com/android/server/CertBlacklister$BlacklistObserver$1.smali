.class Lcom/android/server/CertBlacklister$BlacklistObserver$1;
.super Ljava/lang/Thread;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/CertBlacklister$BlacklistObserver;->writeBlacklist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;


# direct methods
.method constructor <init>(Lcom/android/server/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 79
    iget-object v5, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    #getter for: Lcom/android/server/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;
    invoke-static {v5}, Lcom/android/server/CertBlacklister$BlacklistObserver;->access$000(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v6

    monitor-enter v6

    .line 80
    :try_start_0
    iget-object v5, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-virtual {v5}, Lcom/android/server/CertBlacklister$BlacklistObserver;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, blacklist:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 82
    const-string v5, "CertBlacklister"

    const-string v7, "Certificate blacklist changed, updating..."

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    const/4 v2, 0x0

    .line 86
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v5, "journal"

    const-string v7, ""

    iget-object v8, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    #getter for: Lcom/android/server/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;
    invoke-static {v8}, Lcom/android/server/CertBlacklister$BlacklistObserver;->access$000(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v8

    invoke-static {v5, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 88
    .local v4, tmp:Ljava/io/File;
    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 90
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 93
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 95
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    #getter for: Lcom/android/server/CertBlacklister$BlacklistObserver;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/CertBlacklister$BlacklistObserver;->access$100(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 96
    const-string v5, "CertBlacklister"

    const-string v7, "Certificate blacklist updated"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 100
    :try_start_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 103
    .end local v3           #out:Ljava/io/FileOutputStream;
    .end local v4           #tmp:Ljava/io/File;
    :cond_0
    :goto_0
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    return-void

    .line 97
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v5, "CertBlacklister"

    const-string v7, "Failed to write blacklist"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    :try_start_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 103
    .end local v0           #blacklist:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 100
    .restart local v0       #blacklist:Ljava/lang/String;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    :goto_2
    :try_start_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    .restart local v4       #tmp:Ljava/io/File;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 97
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
