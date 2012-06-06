.class public Lcom/android/OriginalSettings/fips/FipsStatus;
.super Ljava/lang/Object;
.source "FipsStatus.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "secfips"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFipsStatus()I
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 35
    const-string v8, "rw.km_fips_status"

    const-string v9, "undefined"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/android/OriginalSettings/fips/FipsStatus;->nativeCheckKeyManagementModule()V

    .line 38
    const-string v8, "ro.secusefipsmode"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, enabled:Ljava/lang/String;
    const-string v8, "false"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 40
    const-string v7, "FipsStatus"

    const-string v8, "FIPS mode not enabled"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return v6

    .line 44
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v8, "/proc/sys/crypto"

    const-string v9, "fips_status"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v3, fipsStatus:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 47
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 49
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 50
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, status:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v8

    if-lez v8, :cond_2

    .line 53
    const/4 v4, 0x1

    .line 55
    .local v4, result:I
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v8

    if-nez v8, :cond_1

    move v4, v6

    .line 60
    :goto_1
    :try_start_2
    const-string v6, "FipsStatus"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FipsStatus: getFipsStatus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    move v6, v4

    .line 62
    goto :goto_0

    :cond_1
    move v4, v7

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "FipsStatus"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FipsStatus: exception while parsing status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 58
    const/4 v4, 0x1

    goto :goto_1

    .line 64
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #result:I
    .end local v5           #status:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 65
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v6, "FipsStatus"

    const-string v8, "FipsStatus: getFipsStatus: status file does not exist"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 76
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_2
    const-string v6, "FipsStatus"

    const-string v8, "FipsStatus: getFipsStatus: returning with not in fip error"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 77
    goto :goto_0

    .line 67
    :catch_2
    move-exception v1

    .line 68
    .local v1, e:Ljava/io/IOException;
    const-string v6, "FipsStatus"

    const-string v8, "FipsStatus: getFipsStatus: exception while reading status file"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 72
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    const-string v6, "FipsStatus"

    const-string v8, "FipsStatus: getFipsStatus: unable to read status file"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static native nativeCheckKeyManagementModule()V
.end method
